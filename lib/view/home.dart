import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber[300],
        appBar: AppBar(
          backgroundColor: Colors.amber[300],
          elevation: 0,
          leading: Image.asset("assets/icons8-back-30.png"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 400,
              child: Stack(
                children: [
                  PageView(
                    scrollDirection: Axis.horizontal,
                    controller: _controller,
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/chatting.png",
                          height: 30,
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          "assets/live-streaming.png",
                          height: 30,
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          "assets/live-streaming.png",
                          height: 30,
                        ),
                      ),
                    ],
                  ),
                  Container(
                      alignment: Alignment(0, .999),
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: WormEffect(
                            activeDotColor: Colors.white,
                            dotHeight: 5,
                            dotColor: Colors.black,
                            dotWidth: 40),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Lease and Share ",
                style: GoogleFonts.modernAntiqua(
                    fontSize: 40, color: Colors.black)),
            Text(
              "from tools and electronices to sports ,\n"
              "equipment and fashion accesssories our \n"
              "platform allows you to "
              "help other to save money \nand waste",
              style: GoogleFonts.aleo(color: Colors.black, fontSize: 13),
            ),
            TextButton(
                clipBehavior: Clip.antiAlias,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  fixedSize: Size(290, 30),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/start");
                },
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
