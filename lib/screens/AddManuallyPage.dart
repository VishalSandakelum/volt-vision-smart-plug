import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/**
 * @author: Vishal Sandakelum,
 * @Runtime version: 11.0.11+9-b1341.60 amd64
 **/

class Addmanuallypage extends StatefulWidget {
  @override
  State<Addmanuallypage> createState() => _AddmanuallypageState();
}

class _AddmanuallypageState extends State<Addmanuallypage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          color: Color(0xFF232323),
          //color: Colors.red,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: screenHeight* 0.05),
                    width: screenWidth*0.90,
                    //color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print("Image tapped");
                          },
                          child: Container(
                            child: Image.asset('assets/devicemanuallyaddpage/backarrowbtn.png'),
                            color: Colors.transparent,
                          ),
                        ),

                        Text("Add device",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 21,
                                color: Color(0xFFFFFFFF),
                              )),
                          textAlign: TextAlign.center,
                        ),

                        GestureDetector(
                          onTap: () {
                            print("Image tapped");
                          },
                          child: Container(
                            child: Image.asset('assets/devicemanuallyaddpage/devicesearchbtn.png'),
                            color: Colors.transparent,
                          ),
                        )

                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: screenHeight*0.10),
                    color: Colors.red,
                    width: screenWidth*0.90,
                    height: screenHeight*0.75,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}