import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PScreen extends StatelessWidget {
  const PScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController();
    return Material(
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(8),
              child: SafeArea(
                child: Stack(
                  children: [
                    PageView(
                      controller: _controller,
                      scrollDirection: Axis.horizontal,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                              "assets/photo_2024-05-18_17-11-42.jpg"),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            "assets/photo_2024-05-20_19-23-54.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                              "assets/photo_2024-05-20_19-23-43.jpg"),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                              "assets/photo_2024-05-20_19-23-48.jpg"),
                        )
                      ],
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Image.asset(
                        "assets/icons8-back-30.png",
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Image.asset(
                        "assets/icons8-setting-24.png",
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
                alignment: Alignment(0, .999),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 4,
                  effect: const WormEffect(
                      activeDotColor: Colors.amber,
                      dotHeight: 5,
                      dotColor: Colors.black,
                      dotWidth: 40),
                )),
            Container(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: .6, color: Colors.white54),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 3,
                          color: Colors.white70)
                    ]),
                child: ListTile(
                  leading: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: .1, color: Colors.black)),
                      child: Image.asset(
                        "assets/photo_2024-05-20_20-43-54.jpg",
                        fit: BoxFit.fill,
                      )),
                  title: Text(
                    "Matt padiiia",
                    style: GoogleFonts.aleo(color: Colors.black45),
                  ),
                  subtitle: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text("4.9")
                    ],
                  ),
                  trailing: Container(
                      height: 20,
                      width: 20,
                      child: Image.asset(
                        "assets/heart.png",
                        color: Colors.black45,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "2.4 Person Camping Tent",
              style:
                  GoogleFonts.abrilFatface(fontSize: 28, color: Colors.black),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              "Whether you're camping in the woods or\n"
              "attending a festival,this tent proviesds the \n"
              "perfect blend of style and functionailty",
              style: GoogleFonts.aleo(color: Colors.black54),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 20,
                    width: 18,
                    child: Image.asset(
                      "assets/location.png",
                    ),
                  ),
                  Text(
                    "Ratakatu , Naantall",
                    style: GoogleFonts.aleo(color: Colors.black),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              width: 340,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(10),
                      backgroundColor: Colors.black),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "\$5.00",
                            style: GoogleFonts.abrilFatface(
                                fontSize: 15, color: Colors.white),
                          ),
                          Text(
                            "hourly",
                            style: GoogleFonts.aleo(
                                fontSize: 10, color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "\$35.00",
                            style: GoogleFonts.abrilFatface(
                                fontSize: 15, color: Colors.white),
                          ),
                          Text(
                            "daily",
                            style: GoogleFonts.aleo(
                                fontSize: 10, color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "\$160.00",
                            style: GoogleFonts.abrilFatface(
                                fontSize: 15, color: Colors.white),
                          ),
                          Text(
                            "weekly",
                            style: GoogleFonts.aleo(
                                fontSize: 10, color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  )),
            ),
            TextButton(
                clipBehavior: Clip.antiAlias,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.amber,
                  fixedSize: Size(340, 30),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/start");
                },
                child: Text(
                  "lease",
                  style: GoogleFonts.abrilFatface(
                      color: Colors.black, fontSize: 15),
                ))
          ],
        ),
      ),
    );
  }
}
