import 'package:flutter/material.dart';

class startappbar extends StatelessWidget {
  const startappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/home");
          },
          child: Image.asset("assets/icons8-back-30.png")),
      title: Column(
        children: [
          Text(
            "Your Location ",
            style: TextStyle(
                color: Colors.grey[700], fontFamily: "coves", fontSize: 12),
          ),
          const Text(
            "Egypt",
            style: TextStyle(
                color: Colors.black, fontFamily: "coves", fontSize: 17),
          )
        ],
      ),
      centerTitle: true,
      actions: [
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/setting");
            },
            child: Image.asset("assets/icons8-setting-24.png")),
      ],
    );
  }
}
