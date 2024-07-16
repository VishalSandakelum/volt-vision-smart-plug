import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/**
 * @author: Vishal Sandakelum,
 * @Runtime version: 11.0.11+9-b1341.60 amd64
 **/

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isSwitched = false;
  bool lightisSwitched = false;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color(0xFF232323),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 71,left: 20,right: 20),
                padding: EdgeInsets.only(right: 5.00),
                width: double.infinity,
                height: screenHeight * 0.08,
                //color: Colors.pink,
                child: Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 250,
                          height: 100,
                          //color: Colors.green,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Sweet Home,",
                                style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17,
                                      color: Color(0xFFFFFFFF),
                                    )),
                                textAlign: TextAlign.center,
                              ),

                              Text("Theekshana de silva",
                                style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22,
                                      color: Color(0xFFFFFFFF),
                                    )),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      //color: Colors.lightBlue,
                      width: screenWidth* 0.30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: screenWidth* 0.15,
                            height: screenHeight* 0.07,
                            child: FloatingActionButton(
                              onPressed: () {
                                // Define your action here
                              },
                              child: Image.asset('assets/homepage/setting.png'),
                              backgroundColor: Color(0xFF353333),
                              shape: CircleBorder(),
                            ),
                          )

                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 45,left: 20,right: 20),
                padding: EdgeInsets.all(30),
                width: double.infinity,
                height: screenHeight * 0.13,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF343434), Color(0xFF232323)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Color(0x5E000000),
                    width: 0.7,
                  ),
                ),
                child: Container(
                  //color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            //color: Colors.lightBlue,
                            width: screenWidth/2.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Sunday,",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color: Color(0xFFFFFFFF),
                                      )),
                                  textAlign: TextAlign.center,
                                ),

                                Text("10 November",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color: Color(0xFFFFFFFF),
                                      )),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            //color: Colors.lightBlue,
                            width: screenWidth/2.8,
                            padding: EdgeInsets.only(right: screenWidth*0.03),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("18",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 44,
                                        color: Color(0xFFFFFFFF),
                                      )),
                                  textAlign: TextAlign.center,
                                ),

                                Image.asset(
                                  'assets/homepage/rain.png',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 31,left: 20,right: 20),
                width: double.infinity,
                height: screenHeight * 0.13,
                //color: Colors.pink,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: screenWidth*0.9,
                      //color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Usage History",
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Color(0xFFFFFFFF),
                                )),
                            textAlign: TextAlign.center,
                          ),

                          SizedBox(
                            width: screenWidth * 0.12,
                            height: screenHeight * 0.03,
                            child: InkWell(
                              onTap: () {
                                print('Button clicked');
                                // Define your action here
                              },
                              borderRadius: BorderRadius.circular(15), // Manually set border radius
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF353333),
                                  borderRadius: BorderRadius.circular(15), // Set your desired radius
                                ),
                                child: Center(
                                  child: Image.asset('assets/homepage/doubledot.png'),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: screenWidth*0.9,
                      //color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: screenWidth*0.43,
                            //color: Colors.blue,
                            child: Row(
                              children: [
                                Container(
                                  child: SizedBox(
                                    width: screenWidth* 0.13,
                                    height: screenHeight* 0.06,
                                    child: FloatingActionButton(
                                      onPressed: () {
                                        // Define your action here
                                      },
                                      child: Image.asset('assets/homepage/thunder.png'),
                                      backgroundColor: Color(0xFF353333),
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: screenWidth*0.02),
                                  //color: Colors.red,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text("45.56",
                                            style: GoogleFonts.inter(
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 20,
                                                  color: Color(0xFFFFFFFF),
                                                )),
                                            textAlign: TextAlign.center,
                                          ),

                                          SizedBox(
                                            width: 5,
                                          ),

                                          Text("kwh",
                                            style: GoogleFonts.inter(
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15,
                                                  color: Color(0xFFFFFFFF),
                                                )),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),

                                      Text("Usage today",
                                        style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Color(0xFFFFFFFF),
                                            )),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: screenWidth*0.43,
                            //color: Colors.lightBlue,
                            child: Row(
                              children: [
                                Container(
                                  child: SizedBox(
                                    width: screenWidth* 0.13,
                                    height: screenHeight* 0.06,
                                    child: FloatingActionButton(
                                      onPressed: () {
                                        // Define your action here
                                      },
                                      child: Image.asset('assets/homepage/money.png'),
                                      backgroundColor: Color(0xFF353333),
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: screenWidth*0.02),
                                  //color: Colors.red,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text("48",
                                            style: GoogleFonts.inter(
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 20,
                                                  color: Color(0xFFFFFFFF),
                                                )),
                                            textAlign: TextAlign.left,
                                          ),

                                          SizedBox(
                                            width: 5,
                                          ),

                                          Text("dolar",
                                            style: GoogleFonts.inter(
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15,
                                                  color: Color(0xFFFFFFFF),
                                                )),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),

                                      Text("Usage today",
                                        style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Color(0xFFFFFFFF),
                                            )),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 31,left: 20,right: 20),
                width: double.infinity,
                height: screenHeight * 0.13,
                //color: Colors.pink,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: screenWidth*0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Rooms",
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Color(0xFFFFFFFF),
                                )),
                            textAlign: TextAlign.center,
                          ),

                          SizedBox(
                            width: screenWidth * 0.12,
                            height: screenHeight * 0.03,
                            child: InkWell(
                              onTap: () {
                                print('Button clicked');
                                // Define your action here
                              },
                              borderRadius: BorderRadius.circular(15), // Manually set border radius
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF353333),
                                  borderRadius: BorderRadius.circular(15), // Set your desired radius
                                ),
                                child: Center(
                                  child: Image.asset('assets/homepage/doubledot.png'),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      //color: Colors.lightBlue,
                      width: screenWidth*0.9,
                      height: screenHeight*0.08,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            width: screenWidth*0.38,
                            decoration: BoxDecoration(
                              color: Color(0xFF2D2D2D),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: screenWidth* 0.12,
                                  height: screenHeight* 0.06,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF404040),
                                    borderRadius: BorderRadius.circular(100),

                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x40000000), // 25% opacity of black
                                        blurRadius: 4, // Blur effect
                                        offset: Offset(0, 2), // Offset in X and Y directions
                                      ),
                                    ],
                                  ),
                                  child: Image.asset('assets/homepage/room.png'),
                                ),

                                Container(
                                  margin: EdgeInsets.only(left: screenWidth*0.04),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Room",
                                        style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: Color(0xFFFFFFFF),
                                            )),
                                        textAlign: TextAlign.left,
                                      ),

                                      Row(
                                        children: [
                                          Text("6",
                                            style: GoogleFonts.inter(
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xFFFFFFFF),
                                                )),
                                            textAlign: TextAlign.left,
                                          ),

                                          SizedBox(
                                            width: 5,
                                          ),

                                          Text("devices",
                                            style: GoogleFonts.inter(
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xFFFFFFFF),
                                                )),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            width: screenWidth*0.38,
                            decoration: BoxDecoration(
                              color: Color(0xFF2D2D2D),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: screenWidth* 0.12,
                                  height: screenHeight* 0.06,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF404040),
                                    borderRadius: BorderRadius.circular(100),

                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x40000000), // 25% opacity of black
                                        blurRadius: 4, // Blur effect
                                        offset: Offset(0, 2), // Offset in X and Y directions
                                      ),
                                    ],
                                  ),
                                  child: Image.asset('assets/homepage/kitchen.png'),
                                ),

                                Container(
                                  margin: EdgeInsets.only(left: screenWidth*0.04),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Kitchen",
                                        style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: Color(0xFFFFFFFF),
                                            )),
                                        textAlign: TextAlign.left,
                                      ),

                                      Row(
                                        children: [
                                          Text("3",
                                            style: GoogleFonts.inter(
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xFFFFFFFF),
                                                )),
                                            textAlign: TextAlign.left,
                                          ),

                                          SizedBox(
                                            width: 5,
                                          ),

                                          Text("devices",
                                            style: GoogleFonts.inter(
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color: Color(0xFFFFFFFF),
                                                )),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 31,left: 20,right: 20,bottom: 10),
                width: double.infinity,
                height: screenHeight * 0.27,
                //color: Colors.pink,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Devices",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Color(0xFFFFFFFF),
                              )),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Container(
                      //color: Colors.white,
                      width: screenWidth*0.9,
                      height: screenHeight*0.22,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(13),
                            width: screenWidth*0.9,
                            height: screenHeight*0.10,
                            decoration: BoxDecoration(
                              color: Color(0xFF2D2D2D),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  //color: Colors.white,
                                  width: screenWidth*0.45,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: screenWidth* 0.12,
                                        height: screenHeight* 0.06,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF624864),
                                          borderRadius: BorderRadius.circular(100),

                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x40000000), // 25% opacity of black
                                              blurRadius: 4, // Blur effect
                                              offset: Offset(0, 2), // Offset in X and Y directions
                                            ),
                                          ],
                                        ),
                                        child: Image.asset('assets/homepage/air-conditioner.png'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: screenWidth*0.03),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("Air conditioner",
                                              style: GoogleFonts.inter(
                                                  textStyle: TextStyle(
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 16,
                                                      color: Color(0xFFFFFFFF),
                                                  )),
                                              textAlign: TextAlign.left,
                                            ),

                                            Row(
                                              children: [
                                                Text("6",
                                                  style: GoogleFonts.inter(
                                                      textStyle: TextStyle(
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 14,
                                                          color: Color(0xFFFFFFFF),
                                                          //color: Colors.black
                                                      )),
                                                  textAlign: TextAlign.left,
                                                ),

                                                SizedBox(
                                                  width: screenWidth*0.02,
                                                ),

                                                Text("Devices",
                                                  style: GoogleFonts.inter(
                                                      textStyle: TextStyle(
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 14,
                                                          color: Color(0xFFFFFFFF),
                                                          //color: Colors.black
                                                      )),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Container(
                                  child: Switch(
                                    value: isSwitched,
                                    onChanged: (value) {
                                      setState(() {
                                        isSwitched = value;
                                      });
                                    },
                                    activeTrackColor: Colors.blue, // Background color when the switch is on
                                    activeColor: Colors.white, // Thumb color when the switch is on
                                    inactiveTrackColor: Colors.grey, // Background color when the switch is off
                                    inactiveThumbColor: Colors.white, // Thumb color when the switch is off
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(13),
                            width: screenWidth*0.9,
                            height: screenHeight*0.10,
                            decoration: BoxDecoration(
                              color: Color(0xFF2D2D2D),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  //color: Colors.white,
                                  width: screenWidth*0.45,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: screenWidth* 0.12,
                                        height: screenHeight* 0.06,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF525329),
                                          borderRadius: BorderRadius.circular(100),

                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x40000000),
                                              blurRadius: 4,
                                              offset: Offset(0, 2),
                                            ),
                                          ],
                                        ),
                                        child: Image.asset('assets/homepage/lights.png'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: screenWidth*0.03),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("Lights",
                                              style: GoogleFonts.inter(
                                                  textStyle: TextStyle(
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 16,
                                                      color: Color(0xFFFFFFFF),
                                                      //color: Colors.black
                                                  )),
                                              textAlign: TextAlign.left,
                                            ),

                                            Row(
                                              children: [
                                                Text("6",
                                                  style: GoogleFonts.inter(
                                                      textStyle: TextStyle(
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 14,
                                                          color: Color(0xFFFFFFFF),
                                                          //color: Colors.black
                                                      )),
                                                  textAlign: TextAlign.left,
                                                ),

                                                SizedBox(
                                                  width: screenWidth*0.02,
                                                ),

                                                Text("Devices",
                                                  style: GoogleFonts.inter(
                                                      textStyle: TextStyle(
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 14,
                                                          color: Color(0xFFFFFFFF),
                                                          //color: Colors.black
                                                      )),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Container(
                                  child: Switch(
                                    value: lightisSwitched,
                                    onChanged: (value) {
                                      setState(() {
                                        lightisSwitched = value;
                                      });
                                    },
                                    activeTrackColor: Colors.blue, // Background color when the switch is on
                                    activeColor: Colors.white, // Thumb color when the switch is on
                                    inactiveTrackColor: Colors.grey, // Background color when the switch is off
                                    inactiveThumbColor: Colors.white, // Thumb color when the switch is off
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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