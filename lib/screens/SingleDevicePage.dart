import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voltvision_smartplug/components/AiSuggesion.dart';
import 'package:voltvision_smartplug/components/Device.dart';
import 'package:voltvision_smartplug/components/DevicePageHeader.dart';
import 'package:voltvision_smartplug/components/Socket.dart';

import '../components/LiveMonitoringChart.dart';

/**
 * @author: Vishal Sandakelum,
 * @Runtime version: 11.0.11+9-b1341.60 amd64
 **/

class Singledevicepage extends StatefulWidget {
  String device = 'WIFI';

  Singledevicepage({super.key, required this.device});

  @override
  State<Singledevicepage> createState() => _SingledevicepageState(deviceName: device);
}

class _SingledevicepageState extends State<Singledevicepage> {
  final String deviceName;

  _SingledevicepageState({required this.deviceName});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    String title;
    String imagePath;
    switch (devices) {
      case devices.AIR_CONADITIONER:
        title = 'AIR Conditioner';
        break;
      case devices.SWITCH:
        title = 'SWITCH';
        break;
      case devices.WIFI:
        title = 'WIFI Breaker';
        break;
      case devices.FAN:
        title = 'FAN';
        break;
      default:
        title = 'WIFI Breaker';
        break;
    }

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
              Devicepageheader(title: title, imagePath: 'assets/singledevicepage/power-button.png'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: screenHeight*0.03, bottom: screenHeight*0.03),
                    child: Device(backgroundColor: [Color(0xFF9B9B9B)], type: [Images.ELECTRICITY], right: 0.00,),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: screenHeight*0.03,bottom: screenHeight*0.04),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0xFFFFFFFF),
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: screenWidth*0.30,
                              child: Text("Device ID - ",
                                style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 21,
                                      color: Color(0xFFFFFFFF),
                                    )),
                                textAlign: TextAlign.left,
                              ),
                            ),

                            Container(
                              child: Text("BR07191",
                                style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                      color: Color(0xFFFFFFFF),
                                    )),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: screenWidth*0.30,
                              child: Text("Status - ",
                                style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 21,
                                      color: Color(0xFFFFFFFF),
                                    )),
                                textAlign: TextAlign.left,
                              ),
                            ),

                            Container(
                              child: Text("ON",
                                style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                      color: Color(0xFF00FF29),
                                    )),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Container(
                    //color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: screenHeight*0.42,
                              width: screenWidth*0.83,
                              child: Livemonitoringchart()
                          ),
                        ],
                      ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: screenHeight*0.02),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Today total usage -",
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                    color: Color(0xFFFFFFFF),
                                  )),
                            ),

                            SizedBox(width: screenWidth*0.02,),

                            Text("1420 kWh",
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                    color: Color(0xFFFFFFFF),
                                  )),
                            ),
                          ],
                        ),

                        SizedBox(height: screenHeight*0.02,),

                        Aisuggesion(),
                      ],
                    ),
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

enum devices{
  WIFI,SWITCH,FAN,AIR_CONADITIONER
}
