import 'package:flutter/material.dart';

class listview extends StatelessWidget {
  listview({super.key});
  final items = ['all', 'sports', 'electronics', 'tools', 'clothes'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        separatorBuilder: (context, index) => SizedBox(
          width: 3,
        ),
        itemBuilder: (_, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.amber[300],
                    border: Border.all(
                      color: Colors.black54,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(25.0),
                      right: Radius.circular(25.0),
                    ),
                  ),
                  child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          items[index],
                          style: TextStyle(color: Colors.black),
                          maxLines: 1,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
