import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/**
 * @author: Vishal Sandakelum,
 * @Runtime version: 11.0.11+9-b1341.60 amd64
 **/

class Aisuggesion extends StatelessWidget {
  const Aisuggesion({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth*0.90,
      height: screenHeight*0.08,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF2D2D2D), Color(0xFF373737)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: screenWidth * 0.13,
            height: screenHeight * 0.08,
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF9B9B9B),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text("AI",
              style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color(0xFFFFFFFF),
                  )),
            ),
          ),

          Container(
            width: screenWidth*0.55,
            //color: Colors.red,
            child: Text("You can save 130W turning off this device at 10.30 PM to 11.00 PM every day",
              style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color(0xFFFFFFFF),
                  )),
            ),
          ),

          GestureDetector(
            onTap: () {
              print("Image tapped");
            },
            child: Container(
              child: Image.asset('assets/singledevicepage/power-button.png'),
              color: Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}
