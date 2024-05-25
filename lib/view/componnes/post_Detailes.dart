import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tester/view/componnes/proudect.dart';

class postDetail extends StatelessWidget {
  const postDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Text(
              "New offers",
              style: GoogleFonts.nunito(fontSize: 30, color: Colors.black87),
              textAlign: TextAlign.start,
            ),
          ),
          Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25)),
              child: prodect()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.black87, shape: BoxShape.circle),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset("assets/4148093.jpg"))),
                  SizedBox(
                    width: 1,
                  ),
                  Text(
                    " Matt padiiia",
                    style: GoogleFonts.aleo(fontSize: 13, color: Colors.grey),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      "assets/location.png",
                    ),
                  ),
                  Text(
                    "1.6 km  ",
                    style: GoogleFonts.aleo(fontSize: 13, color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/pscreen");
            },
            child: Text(
              " 2.4 Person Camping Tent",
              style: GoogleFonts.nunito(fontSize: 25, color: Colors.black87),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "  \$23.00 day",
                  style: GoogleFonts.aleo(fontSize: 13, color: Colors.black),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("\$160.00 week",
                    style: GoogleFonts.aleo(fontSize: 13, color: Colors.black))
              ],
            ),
          )
        ],
      ),
    );
  }
}
