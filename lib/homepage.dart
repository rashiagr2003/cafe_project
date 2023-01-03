import 'package:cafe_project/bookingpage.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matcher/matcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.name});
  final String name;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              // color: Color(0xff313131).withOpacity(0.45),

              image: DecorationImage(
                  image: AssetImage("assets/Swift_Cafe_V1.png"),
                  fit: BoxFit.cover)),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(blurRadius: 40),
                BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 24,
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: -1)
              ],
              color: Colors.white.withOpacity(0.23),
            ),
            child: SingleChildScrollView(
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  height: 27,
                                  width: 27,
                                  child: Image.asset(
                                    "assets/waving-hand-sign_1f44b.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: Text(
                                          "20/12/2022",
                                          style: GoogleFonts.inter(
                                              color: Color(0xffB6B6B6),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                      Text(
                                        widget.name,
                                        style: GoogleFonts.inter(
                                            color: Color(0xffB6B6B6),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xff979797)),
                                  child: Image(
                                      image: AssetImage("assets/Fill348.png")),
                                ),
                                CircleAvatar(
                                  radius: 19,
                                  backgroundColor: Colors.green,
                                  child: CircleAvatar(
                                    radius: 17,
                                    backgroundImage: NetworkImage(
                                        "https://wallpapercave.com/wp/wp6974725.jpg"),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      margin: EdgeInsets.symmetric(vertical: 16),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.search,
                            color: Color(0xffBBBBBC),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search favorite Beverages",
                                  hintStyle: TextStyle(
                                    color: Color(0xffBBBBBC),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Image(
                            image: AssetImage("assets/Fill.png"),
                          )
                        ],
                      ),
                    ),
                    Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(vertical: 11),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        height: 350,
                        color: Color(0xff313131).withOpacity(0.45),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 18, vertical: 8),
                                child: Text(
                                  "Most Popular Beverages",
                                  style: GoogleFonts.inter(
                                      color: Color(0xffB6B6B6),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 280,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    list("assets/Coffee.png", "Arabico",
                                        "Arabico, Steamed Milk"),
                                    list("assets/Swift.png", "Doppio",
                                        "Doppio, Steamed Milk"),
                                    list("assets/Swift.png", "Hot Cappuccino",
                                        "Espresso, Steamed Milk"),
                                    list("assets/Swift.png", "Americano",
                                        "Americano, Steamed Milk"),
                                    list("assets/Coffee2.png", "Arabico",
                                        "Arabico, Steamed Milk")
                                  ],
                                ),
                              )
                            ])),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 18, vertical: 8),
                            child: Text(
                              "Get it instantly",
                              style: GoogleFonts.inter(
                                  color: Color(0xffB6B6B6),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            // height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: ListView(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              scrollDirection: Axis.vertical,
                              children: [
                                list2("Lattè", "assets/Rectangle.png",
                                    "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top."),
                                list2("FLAT WHITE", "assets/Rectangle1.png",
                                    "Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.")
                              ],
                            ),
                          )
                          //
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 55,
                    )
                  ]),
            ),
          )),
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        onTap: (int val) {
          //returns tab id which is user tapped
        },
        currentIndex: 0,
        items: [
          FloatingNavbarItem(
            icon: Icons.home,
          ),
          FloatingNavbarItem(
            icon: Icons.supervised_user_circle,
          ),
          FloatingNavbarItem(
            icon: Icons.payment_sharp,
          ),
          FloatingNavbarItem(
            customWidget: Container(
                height: 18,
                width: 18,
                child: Image(
                  image: AssetImage("assets/Fill(1).png"),
                  fit: BoxFit.cover,
                )),
          ),
          FloatingNavbarItem(
            icon: Icons.chat_bubble_outline,
          ),
        ],
      ),
    ));
  }

  Widget list(String image, String text, String detail) {
    return Container(
      padding: EdgeInsets.only(right: 15, bottom: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
            width: 213,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xffFFFFFF),
                  Color(0xffFFFFFF).withOpacity(0.29),
                  Color(0xffFFFFFF).withOpacity(0.35),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                boxShadow: [
                  BoxShadow(blurRadius: 10),
                  BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 24,
                      color: Color(0xffFFFFFF).withOpacity(0.29),
                      spreadRadius: -1)
                ],
                color: Colors.white.withOpacity(0.35),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 131,
                    height: 128,
                    child: Image.asset(image),
                  ),
                  Container(
                    height: 70,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          style: GoogleFonts.inter(
                              color: Color(0xffCDCDCD),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 32,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    detail,
                                    style: GoogleFonts.inter(
                                        color: Color(0xff303030),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Container(
                                    width: 70,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "4.9",
                                          style: GoogleFonts.inter(
                                              color: Color(0xff000000),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffFFC003),
                                          size: 11.5,
                                        ),
                                        Text(
                                          "(458)",
                                          style: GoogleFonts.inter(
                                              color: Color(0xff000000),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BookingPage(
                                            image: image,
                                            name: text,
                                            detail: detail)));
                              },
                              child: Container(
                                width: 30,
                                height: 30,
                                color: Color(0xff66A35C),
                                child: Icon(Icons.add),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Widget list2(String name, String image, String detail) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
      margin: EdgeInsets.only(bottom: 14),
      height: 163,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Color(0xffB4B4B4).withOpacity(0.33),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 4,
                spreadRadius: 0,
                color: Color(0xff000000).withOpacity(0.25))
          ]),
      child: Row(children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  name,
                  style: GoogleFonts.inter(
                      color: Color(0xffB6B6B6),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      decorationColor: Color(0xffCDCDCD)),
                ),
                Container(
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 121,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "4.9",
                              style: GoogleFonts.inter(
                                  color: Color(0xff000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFFC003),
                              size: 11.5,
                            ),
                            Text(
                              "(458)",
                              style: GoogleFonts.inter(
                                  color: Color(0xff000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child:
                                  Image(image: AssetImage("assets/Image.png")),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 202,
                        child: Text(
                          detail,
                          style: GoogleFonts.inter(
                              color: Color(0xffB6B6B6),
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              decorationColor: Color(0xffCDCDCD)),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 122,
              width: 112,
              child: Image(image: AssetImage(image)),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BookingPage(
                              image: image,
                              name: name,
                              detail: detail,
                            )));
              },
              child: Container(
                width: 52,
                height: 19,
                decoration: BoxDecoration(
                    color: Color(0xff66A35C),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    "ADD",
                  ),
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
}
