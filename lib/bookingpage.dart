import 'dart:ffi';

import 'package:cafe_project/widgets/switch_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingPage extends StatefulWidget {
  const BookingPage(
      {super.key,
      required this.image,
      required this.name,
      required this.detail});
  final String image;
  final String name;
  final String detail;

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  bool check_box_value = false;
  bool isSwitchOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Swift_Cafe_V1.png"),
                fit: BoxFit.cover)),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          Container(
            // margin: EdgeInsets.only(bottom: 400),
            height: MediaQuery.of(context).size.height * 0.48,
            width: double.infinity,
            // width: 456,
            child: Image.asset(
              widget.image,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 31, horizontal: 30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.58,
                decoration: BoxDecoration(
                    boxShadow: const [BoxShadow(blurRadius: 30)],
                    gradient: LinearGradient(colors: [
                      const Color(0xff303034),
                      const Color(0xff7C7C7C).withOpacity(0.60),
                      const Color(0xff272727).withOpacity(0.60)
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(29),
                        topRight: Radius.circular(29))),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 95,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              widget.name,
                              style: GoogleFonts.inter(
                                  color: const Color(0xffB6B6B6),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  decorationColor: const Color(0xffCDCDCD)),
                            ),
                            SizedBox(
                              width: 121,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "4.9",
                                    style: GoogleFonts.inter(
                                        color: const Color(0xff000000),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Color(0xffFFC003),
                                    size: 11.5,
                                  ),
                                  Text(
                                    "(458)",
                                    style: GoogleFonts.inter(
                                        color: const Color(0xff000000),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: Image(
                                        image: AssetImage("assets/Image.png")),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              widget.detail,
                              style: GoogleFonts.inter(
                                  color: const Color(0xffB6B6B6),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  decorationColor: const Color(0xffCDCDCD)),
                            ),
                          ],
                        ),
                      ),
                      name_of_choice("Choice of Cup Filling"),
                      Container(
                        height: 52,
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            choicetext("Full", 51, Color(0xff37AD54)),
                            choicetext("1/2 Full", 64, Color(0xffD9D9D9)),
                            choicetext("3/4 Full", 65, Color(0xffD9D9D9)),
                            choicetext("1/4 Full", 65, Color(0xffD9D9D9))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: name_of_choice(" Choice of Milk"),
                      ),
                      row(context, "Skim Milk", "Full Cream Milk"),
                      row(context, "Almond Milk", "Full Cream"),
                      row(context, "Almond Milk", "Oat Milk"),
                      SwitchWidget(text: "Lactose Free Milk"),
                      name_of_choice("Choice of Sugar"),
                      row(context, "Sugar X1", "Sugar X2"),
                      row(context, "1/2 Sugar", "No Sugar"),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        width: MediaQuery.of(context).size.width,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff333333).withOpacity(0.84)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Checkbox(
                              value: check_box_value,
                              onChanged: (value) {
                                setState(() {
                                  check_box_value = value!;
                                });
                              },
                            ),
                            Text("High Priority",
                                style: GoogleFonts.inter(
                                  color: const Color(0xffCDCDCD),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, left: 2),
                              child: Icon(
                                Icons.error,
                                color: Color.fromARGB(255, 232, 74, 127),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 44,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.5),
                                  gradient: LinearGradient(
                                    colors: [
                                      const Color(0xff198133)
                                          .withOpacity(0.7656),
                                      const Color(0xff37AD54).withOpacity(0.88),
                                    ],
                                  )),
                              child: Center(
                                child: Text("Submit",
                                    style: GoogleFonts.inter(
                                      color: const Color(0xffCDCDCD),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    )),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ]),
      ),
    );
  }

  Container row(BuildContext context, String option1, String option2) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SwitchWidget(text: option1),
          SwitchWidget(text: option2),
        ],
      ),
    );
  }

  Text name_of_choice(String name) {
    return Text(
      name,
      style: GoogleFonts.inter(
        color: const Color(0xffCDCDCD),
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Container choicetext(String text, int width, Color color) {
    return Container(
        height: 27,
        width: width.toDouble(),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(5), color: color),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.inter(
              color: const Color(0xff000000),
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ));
  }
}
