import 'package:flutter/material.dart';

class prodect extends StatelessWidget {
  const prodect({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: Stack(
        children: [
          Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  "assets/photo_2024-05-18_17-11-42.jpg",
                  fit: BoxFit.fill,
                ),
              )),
          Positioned(
              top: 10,
              right: 10,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  height: 25,
                  width: 25,
                  child: Image.asset(
                    "assets/heart-like-circle-svgrepo-com (1).png",
                  )))
        ],
      ),
    );
  }
}
