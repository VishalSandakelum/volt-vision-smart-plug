/**
 * @author: Vishal Sandakelum,
 * @Runtime version: 11.0.11+9-b1341.60 amd64
 **/

import 'package:flutter/material.dart';
import 'package:voltvision_smartplug/screens/AddManuallyPage.dart';
import 'package:voltvision_smartplug/screens/HomePage.dart';
import 'screens/PermissionPage.dart';
import 'screens/StartedPage.dart';

void main() {
  runApp(VoltVision());
}

class VoltVision extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: StartedPage(),
      //home: Homepage(),
      home: Addmanuallypage(),
    );
  }
}