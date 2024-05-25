import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tester/view/componnes/post_Detailes.dart';
import 'package:tester/view/componnes/startappbar.dart';
import 'package:tester/wights/caticrolistview.dart';

import 'componnes/search.dart';

class start extends StatelessWidget {
  const start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 90,
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(30),
            )),
        child: GNav(
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey.shade800,
          padding: EdgeInsets.all(16),
          gap: 5,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.favorite_border,
              text: "fav",
            ),
            GButton(
              icon: Icons.chat_bubble_rounded,
              text: "chats",
            ),
            GButton(
              icon: Icons.person_rounded,
              text: "profile",
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.amber[300],
        elevation: 10,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                startappbar(),
                SizedBox(
                  height: 8,
                ),
                search(),
                SizedBox(
                  height: 10,
                ),
                listview(),
                ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: 10,
                  separatorBuilder: (context, index) => SizedBox(
                    height: 3,
                  ),
                  itemBuilder: (_, index) {
                    return postDetail();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
