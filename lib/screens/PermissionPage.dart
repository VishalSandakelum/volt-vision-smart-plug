import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voltvision_smartplug/screens/HomePage.dart';

/**
 * @author: Vishal Sandakelum,
 * @Runtime version: 11.0.11+9-b1341.60 amd64
 **/

class Permissionpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          //color: Colors.lightBlue,
          color: Color(0xFF232323),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 81,left: 20,right: 20),
                width: double.infinity,
                height: screenHeight * 0.53,
                //color: Colors.pink,
                child: Column(
                  children: [
                    Text("To provide you with better services,  we request the following permission: ",
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: Color(0xFFFFFFFF),
                          )),
                      textAlign: TextAlign.center,
                    ),

                    Container(
                      //color: Colors.white,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/permissionpage/permissionmainpictureback.png',
                          ),
                          Positioned(
                            top: 0, // Adjust top position as needed
                            left: 0, // Adjust left position as needed
                            right: 0, // Adjust right position as needed
                            child: Image.asset(
                              'assets/permissionpage/permissionpagemainpicture.png',
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      child: Text("The following function can be enabled or disabled in the app settings. ",
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: Color(0xFFFFFFFF),
                            )),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                width: double.infinity,
                height: screenHeight * 0.35,
                //color: Colors.pink,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFF2D2D2D),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Row(
                        children: [
                          Container(
                            //color: Colors.lightBlue,
                            margin: EdgeInsets.only(left: 5),
                            child: Image.asset(
                              'assets/permissionpage/checkmark.png',
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5,top: 5,bottom: 8),
                            //color: Colors.lightBlue,
                            width: 330,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Service Maintenance & Improvement Activity",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                        color: Color(0xFFFFFFFF),
                                      )),
                                  textAlign: TextAlign.center,
                                ),

                                Text("Allow us to collect data related to product usage. Basic functionality will still be available if permissions are "
                                    "disabled but the experience optimization policy based on data preferences will be ineffective.",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Color(0xFFFFFFFF),
                                      )),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFF2D2D2D),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Row(
                        children: [
                          Container(
                            //color: Colors.lightBlue,
                            margin: EdgeInsets.only(left: 5),
                            child: Image.asset(
                              'assets/permissionpage/checkmark.png',
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5,top: 5,bottom: 8),
                            //color: Colors.lightBlue,
                            width: 330,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Personalized Recommendations",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                        color: Color(0xFFFFFFFF),
                                      )),
                                  textAlign: TextAlign.center,
                                ),

                                Text("Allow us to recommend content to you, including experience optimization, scene linkage, "
                                    "and best usage advice for devices."
                                    " If you disable this function, we will no longer send you potentially interesting content.",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Color(0xFFFFFFFF),
                                      )),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: double.infinity,
                      height: 50,
                      //color: Colors.white,
                      child: SizedBox(
                        width: 213,
                        height: 72,
                        child: ElevatedButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_){
                            return Homepage();
                          }));
                        }, style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF505050)), // Button color
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0), // Button radius
                            ),
                          ),
                        ), child: Text(
                          "Go to App",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                              color: Color(0xFFD4D4D4), // Button font color
                            ),
                          ),
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
