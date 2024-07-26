import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

/**
 * @author: Vishal Sandakelum,
 * @Runtime version: 11.0.11+9-b1341.60 amd64
 **/

class Devicepageheader extends StatelessWidget{
  final String title;
  final String imagePath;

  Devicepageheader({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: screenHeight* 0.05),
          width: screenWidth*0.90,
          //color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  print("Image tapped");
                },
                child: Container(
                  child: Image.asset('assets/devicemanuallyaddpage/backarrowbtn.png'),
                  color: Colors.transparent,
                ),
              ),

              Text(title,
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 21,
                      color: Color(0xFFFFFFFF),
                    )),
                textAlign: TextAlign.center,
              ),

              GestureDetector(
                onTap: () {
                  print("Image tapped");
                  sendGetRequest();
                },
                child: Container(
                  child: Image.asset(imagePath),
                  color: Colors.transparent,
                ),
              )

            ],
          ),
        ),
      ],
    );
  }

}

Future<void> sendGetRequest() async {
  final url = 'http://192.168.198.104/';
  try {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      print('Request successful: ${response.body}');
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
  } catch (e) {
    print('Error occurred: $e');
  }
}