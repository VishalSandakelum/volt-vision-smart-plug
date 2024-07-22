import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voltvision_smartplug/components/Device.dart';

/**
 * @author: Vishal Sandakelum,
 * @Runtime version: 11.0.11+9-b1341.60 amd64
 **/

class Adddevices extends StatelessWidget{
  final String electricalDeivceType;
  Adddevices({
    required this.electricalDeivceType,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: screenWidth*0.35,
              padding: EdgeInsetsDirectional.only(top: screenHeight*0.02,bottom: screenHeight*0.02),
              //color: Colors.green,
              child: Text(electricalDeivceType,
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFFFFFFFF),
                    )),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ],
    );
  }
}