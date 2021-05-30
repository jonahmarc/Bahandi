import 'package:flutter/material.dart';

import 'griddashboard.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: GridDashBoard(),
    );
  }
}

// Widget build(BuildContext context) {
  //   //AllQuestionController _qnController = Get.put(AllQuestionController());
  //   return Scaffold(
  //     body: 
  //       // Expanded(
  //       //   child: Column(
  //       //     children: [
  //       //       WebsafeSvg.asset("assets/homescreen_bg_V1.svg",
  //       //       fit: BoxFit.fill), // background
  //       //     ],
  //       //   ),
  //       // ),
  //     Stack(
  //       children: [
  //         WebsafeSvg.asset("assets/homescreen_bg_V1.svg",
  //             fit: BoxFit.fill), // background
  //         SafeArea(
  //           child: SingleChildScrollView(
  //             child: Column(
  //               // whole screen is considered as column
  //               crossAxisAlignment: CrossAxisAlignment.center,
  //               children: [
  //                 // widgets inside the column
  //                 Padding(
  //                   padding:
  //                       EdgeInsets.fromLTRB(0, 230, 0, 20), // padding configuration
  //                   child: Center(
  //                     child: Container(
  //                       child: Image.asset('assets/pictionarybtn.png'),
  //                     ),
  //                   ), 
  //                 ),
  //                 // another ROW starts
  //                 Padding(
  //                   // put a padding
  //                   padding:
  //                       EdgeInsets.fromLTRB(0, 30, 0, 30), // padding configuration
  //                   child: Center(
  //                     child: Container(
  //                       child: Image.asset('assets/wordgamebtn.png'),
  //                     ),
  //                   ), 
                    
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //     ],
  //     ),
  //   );
  // }



      // Column(
      //   children: <Widget>[
      //     SizedBox(
      //       height: 60,
      //     ),
      //     Padding(
      //       padding: EdgeInsets.only(left: 16, right: 16),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: <Widget>[
      //           Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: <Widget>[
      //               Text(
      //                 "Bahandi",
      //                 style: GoogleFonts.montserrat(
      //                     textStyle: TextStyle(
      //                         color: Color(0xff000000),
      //                         fontSize: 36,
      //                         fontWeight: FontWeight.bold)),
      //               ),
      //               SizedBox(
      //                 height: 4,
      //               ),
      //               Text(
      //                 "Learn Bich",
      //                 style: GoogleFonts.montserrat(
      //                     textStyle: TextStyle(
      //                         color: Color(0xff000000),
      //                         fontSize: 13,
      //                         fontWeight: FontWeight.bold)),
      //               ),
      //             ],
      //           ),
      //           IconButton(
      //             alignment: Alignment.topCenter,
      //             icon: Image.asset(
      //               "assets/shopping_bag.png",
      //               width: 24,
      //             ),
      //             onPressed: () {}, //para sa shopping bag
      //           )
      //         ],
      //       ),
      //     ),
      //     SizedBox(
      //       height: 40,
      //     ),
      //     GridDashBoard()
      //   ],
      // ),