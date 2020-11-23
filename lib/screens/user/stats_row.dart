import 'package:flutter/material.dart';


class StatsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("438",
              style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700
            ),
              ),
              Text("Posts")
            ],
          ),
                  Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Text("298",
              style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700
            ),
              ),
              Text("Following")
            ],
          ),
                  Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Text("321k",
              style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700
            ),
              ),
              Text("Followers")
            ],
          ),
              ]
      ),
    );
  }
}