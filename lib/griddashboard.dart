import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'pictionary.dart';
import 'screens/quizLevelView.dart';

class GridDashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebsafeSvg.asset("assets/homescreen_bg_V1.svg",
            fit: BoxFit.fill), // background
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              // whole screen is considered as column
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                // widgets inside the column
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      0, 230, 0, 20), // padding configuration
                  child: Center(
                    child: Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PictionaryState()));
                        },
                        child: Image.asset('assets/pictionarybtn.png'),
                      ),
                    ),
                  ),
                ),
                // another ROW starts
                Padding(
                  // put a padding
                  padding: EdgeInsets.fromLTRB(
                      0, 30, 0, 30), // padding configuration
                  child: Center(
                    child: Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QuizLevelView()));
                        },
                        child: Image.asset('assets/wordgamebtn.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// import 'package:e_commerce/pictionary.dart';
// import 'package:e_commerce/screens/quizLevelView.dart';
// // import 'package:e_commerce/wordgame.dart';
// import 'package:flutter/material.dart';
// //import 'package:google_fonts/google_fonts.dart';

// class GridDashBoard extends StatefulWidget {
//   @override
//   _GridDashBoardState createState() => _GridDashBoardState();
// }

// class _GridDashBoardState extends State<GridDashBoard> {
//   Items item1 = new Items(title: "Pictionary", img: "assets/image1.png");

//   Items item2 = new Items(title: "WordMatch", img: "assets/image2.png");

//   Items item3 = new Items(title: "Development", img: "assets/image3.png");

//   Items item4 = new Items(title: "Development", img: "assets/image4.png");

//   Items item5 = new Items(title: "Development", img: "assets/image1.png");

//   Items item6 = new Items(title: "Groceries", img: "assets/image2.png");

//   @override
//   Widget build(BuildContext context) {
//     List<Items> myList = [item1, item2, item3, item4, item5, item6];
//     //var color = 0xffFFFFFF;
//     return Flexible(
//       child: GridView.count(
//           childAspectRatio: 1.0,
//           padding: EdgeInsets.only(left: 16, right: 16),
//           crossAxisCount: 2,
//           crossAxisSpacing: 18,
//           mainAxisSpacing: 18,
//           children: myList.map((data) {
//             return InkWell(
//                 onTap: () {
//                   if (data.title == "Pictionary") {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => PictionaryState()));
//                   } else if (data.title == "WordMatch") {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => QuizLevelView()));
//                     // MaterialPageRoute(builder: (context) => WordGame()));
//                   }
//                 },
//                 /*
//               decoration: BoxDecoration(
//                   color: Color(color), borderRadius: BorderRadius.circular(10)),
//                   */
//                 child: Container(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Image.asset(
//                         data.img,
//                         width: 117,
//                       ),
//                       /*SizedBox(
//                       height: 14,
//                     ),
//                     /Text(
//                       data.title,
//                       style: GoogleFonts.openSan(
//                           textStyle: TextStyle(
//                               color: Colors.white,
//                               fontSize: 16,
//                               fontWeight: FontWeight.w600)),
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Text(
//                       data.subtitle,
//                       style: GoogleFonts.openSans(
//                           textStyle: TextStyle(
//                               color: Colors.white38,
//                               fontSize: 10,
//                               fontWeight: FontWeight.w600)),
//                     ),
//                     SizedBox(
//                       height: 14,
//                     ),
//                     Text(
//                       data.event,
//                       style: GoogleFonts.openSans(
//                           textStyle: TextStyle(
//                               color: Colors.white70,
//                               fontSize: 11,
//                               fontWeight: FontWeight.w600)),
//                     ),*/
//                     ],
//                   ),
//                 ));
//           }).toList()),
//     );
//   }
// }

// class Items {
//   String title;
//   String img;
//   Items({this.title, this.img});
// }
