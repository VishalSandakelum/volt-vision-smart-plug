import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Device.dart';

/**
 * @author: Vishal Sandakelum,
 * @Runtime version: 11.0.11+9-b1341.60 amd64
 **/

class Socket extends StatelessWidget{
  final List<Color> backgroundColor;
  final List<Images>type;

  Socket({
    required this.backgroundColor, required this.type
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
        width: screenWidth*0.55,
        padding: EdgeInsetsDirectional.only(top: screenHeight*0.02,bottom: screenHeight*0.02),
        //color: Colors.blue,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Device(backgroundColor: backgroundColor, type: type, right: 0.05,),
            ],
          ),
        )
    );
  }
}