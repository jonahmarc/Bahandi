import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'griddashboard.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Bahandi",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 36,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Learn Bich",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 13,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                IconButton(
                  alignment: Alignment.topCenter,
                  icon: Image.asset(
                    "assets/shopping_bag.png",
                    width: 24,
                  ),
                  onPressed: () {}, //para sa shopping bag
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          GridDashBoard()
        ],
      ),
    ); //Scaffold
  }
}
