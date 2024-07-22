import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/**
 * @author: Vishal Sandakelum,
 * @Runtime version: 11.0.11+9-b1341.60 amd64
 **/

class Device extends StatelessWidget{
  final List<Color> backgroundColor;
  final List<Images>type;
  final num right;

  Device({
    required this.backgroundColor, required this.type, required this.right
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Row(
        children: List.generate(type.length, (index) {
          String imagePath;
          switch (type[index]) {
            case Images.AIR_CONDITIONER:
              imagePath = 'assets/adddevicepage/air-conditioner.png';
              break;
            case Images.ELECTRICITY:
              imagePath = 'assets/adddevicepage/electricity.png';
              break;
            case Images.ENERGY:
              imagePath = 'assets/adddevicepage/energy.png';
              break;
            case Images.FAN:
              imagePath = 'assets/adddevicepage/fan.png';
              break;
            case Images.SWITCH:
              imagePath = 'assets/adddevicepage/switch.png';
              break;
            default:
              imagePath = 'assets/adddevicepage/electricity.png';
              break;
          }

          return Container(
            width: screenWidth * 0.17,
            height: screenHeight * 0.08,
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: screenWidth * right),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: backgroundColor[index],
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(imagePath),
          );
        }),
    );
  }

}

enum Images{
  ELECTRICITY, ENERGY, AIR_CONDITIONER, SWITCH, FAN
}