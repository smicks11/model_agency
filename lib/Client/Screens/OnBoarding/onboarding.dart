import 'package:bma/Shared/constants.dart';
import 'package:bma/Shared/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/onboard_bg.jpg"), fit: BoxFit.cover),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 1.0,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),

           Positioned(
            bottom: MediaQuery.of(context).size.height * 0.3,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: CustomText(
                    text: "E-Models Agency",
                    size: 34,
                    color: white,
                    weight: FontWeight.bold,
                  ),
                ),
                Container(
                  child: Text(
                      "Get addicted to the beauty, the great perfomances of our models and to our work philosophy",
                      style: GoogleFonts.dmSans(
                          textStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ))),
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(40)),
                  child: FlatButton(
                    child: Text("Join as a client".toUpperCase(),
                     style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (ctx) => BusinessDetector()));
                    },
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: primaryColor
                        ),
                      // color: primaryColor,
                      borderRadius: BorderRadius.circular(40)),
                  child: FlatButton(
                    child: Text(
                      "Continue as an admin".toUpperCase(),
                      style: TextStyle(
                        fontSize: 12,
                      ),
                      ),
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (ctx) => UserDetector()));
                    },
                    textColor: white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}