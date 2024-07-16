import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voltvision_smartplug/screens/PermissionPage.dart';

/**
 * @author: Vishal Sandakelum,
 * @Runtime version: 11.0.11+9-b1341.60 amd64
 **/

class StartedPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color(0xFF232323),
          child: Column(
            children: [
              Image.asset(
                'assets/startpage/startpage.png', // Your image asset path
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                //color: Colors.blue,
                margin: EdgeInsets.all(20),
                width: double.infinity,
                height: 320,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/startpage/volvisionlogo.png',
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("VOLT VISION", style: GoogleFonts.judson(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 57,
                              color: Color(0xFFD4D4D4),
                            ))),

                        Container(
                          //color: Colors.green,
                          height: 45,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("we help you to control your home appliance",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFFFFFFFF),
                                      ))),
                              Text("digitally from anywhere in the world with our app.",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFFFFFFFF),
                                      )))
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 60),
                          width: double.infinity,
                          height: 70,
                          //color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 213,
                                height: 72,
                                child: ElevatedButton(onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (_){
                                    return Permissionpage();
                                  }));
                                }, style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFADCEEC)), // Button color
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(78.0), // Button radius
                                    ),
                                  ),
                                ), child: Text(
                                  "Get Started",
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17,
                                      color: Color(0xFF404040), // Button font color
                                    ),
                                  ),
                                ),),
                              ),

                              SizedBox(
                                width: 20,
                              ),

                              SizedBox(
                                width: 64,
                                height: 64,
                                child: ElevatedButton(onPressed: (){}, style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF353333)), // Button color
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(78.0), // Button radius
                                    ),
                                  ),
                                  shadowColor: MaterialStateProperty.all<Color>(Color(0xFF353333)),
                                  elevation: MaterialStateProperty.all<double>(4.0),
                                ), child: SizedBox(
                                  height: 44,
                                  width: 44,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        height: 44,
                                        width: 44,
                                        'assets/startpage/googleicon.png',
                                      ),
                                    ],
                                  ),
                                )),
                              ),

                              SizedBox(
                                width: 64,
                                height: 64,
                                child: ElevatedButton(onPressed: (){}, style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF353333)), // Button color
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(78.0), // Button radius
                                    ),
                                  ),
                                  shadowColor: MaterialStateProperty.all<Color>(Color(0xFF353333)),
                                  elevation: MaterialStateProperty.all<double>(4.0),
                                ), child: Container(
                                  width: 54,
                                  height: 34,
                                  child: Image.asset(
                                    'assets/startpage/fb.png',
                                    width: 44,
                                    height: 44,
                                    fit: BoxFit.contain,
                                  ),
                                )),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}