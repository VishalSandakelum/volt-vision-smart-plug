import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voltvision_smartplug/components/DevicePageHeader.dart';
import 'package:voltvision_smartplug/components/Socket.dart';

import '../components/AddDevices.dart';
import '../components/Device.dart';

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
              Devicepageheader(title: "Add device", imagePath: 'assets/devicemanuallyaddpage/devicesearchbtn.png'),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: screenHeight*0.10),
                    padding: EdgeInsets.only(right: screenWidth*0.20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Electrical",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xFF00FF29),
                              )),
                          textAlign: TextAlign.center,
                        ),

                        Text("Socket",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xFFFFFFFF),
                              )),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    //color: Colors.red,
                    width: screenWidth*0.90,
                    height: screenHeight*0.74,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Adddevices(
                                  electricalDeivceType: 'Lighting'
                              ),

                              Socket(backgroundColor: [Color(0xFF9B9B9B),Color(0xFF4A4949),Color(0xFF4A4949)], type: [Images.ELECTRICITY,Images.ENERGY,Images.AIR_CONDITIONER],),
                            ],
                          ),

                          Row(
                            children: [
                              Adddevices(
                                  electricalDeivceType: 'Sensors'
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Adddevices(
                                  electricalDeivceType: 'Large Home Appliances'
                              ),

                              Socket(backgroundColor: [Color(0xFF9B9B9B),Color(0xFF4A4949)], type: [Images.SWITCH,Images.FAN],),
                            ],
                          ),

                          Row(
                            children: [
                              Adddevices(
                                  electricalDeivceType: 'Small Home Appliances'
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Adddevices(
                                  electricalDeivceType: 'Kitchen Appliances'
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Adddevices(
                                  electricalDeivceType: 'Exercise & Health'
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Adddevices(
                                  electricalDeivceType: 'Camera & Lock'
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Adddevices(
                                  electricalDeivceType: 'Energy'
                              ),
                            ],
                          ),
                        ],
                      ),
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