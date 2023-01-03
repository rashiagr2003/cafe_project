import 'package:cafe_project/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Swift_Cafe_V1.png"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(17),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: MediaQuery.of(context).size.height * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      // image: const DecorationImage(
                      //     opacity: 0.10,
                      //     image: AssetImage("assets/backgroundimg.png"))
                    ),
                    child: Container(
                      width: double.infinity,
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
                        // gradient: LinearGradient(
                        //     colors: [
                        //       Colors.white.withOpacity(0.23),
                        //       Colors.white.withOpacity(0.12),
                        //       Colors.white.withOpacity(0.11),
                        //     ],
                        //     begin: Alignment.topLeft,
                        //     end: Alignment.bottomRight,
                        //     stops: [0, 0.5, 1]),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 40),
                            width: 89,
                            child: Image.asset(
                              "assets/cafe.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            height: 95,
                            width: 100,
                            child: Text(
                              "Swift Café",
                              style: GoogleFonts.raleway(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  offset: const Offset(0, 0),
                                  blurRadius: 20,
                                  spreadRadius: 0,
                                  color: Colors.white.withOpacity(0.87))
                            ]),
                            child: Text(
                              '"Latte but never late"',
                              style: GoogleFonts.raleway(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffABABAB)),
                            ),
                          ),
                          Container(
                            // height: 17,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.white))),
                            width: MediaQuery.of(context).size.width * 0.65,
                            child: TextField(
                              controller: _name,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  hintStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  hintText: "User Name",
                                  hoverColor: Colors.white),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.white))),
                            width: MediaQuery.of(context).size.width * 0.65,
                            child: const TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  hintStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  hintText: "Password",
                                  hoverColor: Colors.white),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (_name.text.isNotEmpty) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => HomePage(
                                              name: _name.text,
                                            ))));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(
                                            "Please fill details properly")));
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 39),
                              height: 49,
                              width: MediaQuery.of(context).size.width * 0.6,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xff4D2B1A),
                                      Color(0xffA7745A),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(33),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: const Offset(2, 2),
                                        blurRadius: 15,
                                        spreadRadius: -2,
                                        color: Colors.white.withOpacity(0.65))
                                  ]),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: GoogleFonts.inter(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffFFFFFF)),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 49,
                            width: MediaQuery.of(context).size.width * 0.6,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(33),
                                border: Border.all(color: Color(0xffF8F8F8)),
                                boxShadow: [
                                  BoxShadow(
                                      offset: const Offset(2, 2),
                                      blurRadius: 15,
                                      spreadRadius: 0,
                                      color:
                                          Color(0xff000000).withOpacity(0.65))
                                ]),
                            child: Center(
                              child: Text("Signup",
                                  style: GoogleFonts.inter(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 28),
                            child: Text("Privacy Policy",
                                style: GoogleFonts.inter(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
