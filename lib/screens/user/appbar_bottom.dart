import 'package:flutter/material.dart';
import 'package:user_desc_task/models/user.dart';
import 'package:user_desc_task/screens/user/buttons_row.dart';
import 'package:user_desc_task/screens/user/stats_row.dart';

class AppBarBottom extends StatelessWidget {
  final UserProfile user;
  AppBarBottom(this.user);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
new Container(
      width: 70.0,
      height: 70.0,
                margin: EdgeInsets.only(bottom: 14),
      decoration: new BoxDecoration(
          border: Border.all(
            color: Colors.blueGrey,
            width: 2.0
          ),
          shape: BoxShape.circle,
          image: new DecorationImage(
          fit: BoxFit.fill,
          image: new NetworkImage(
                 "https://picsum.photos/200")
                 )
)),       

Text("${user.firstname} ${user.lastname}",
style: TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 18.0
),
),
        Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          width: MediaQuery.of(context).size.width,
          child: Text(
            "Must go faster. Must go faster,... go, go, go, go, go! I was a part of something special.",
            textAlign: TextAlign.center,
            )),
        Divider(
          color: Colors.black26,
          thickness: 0.5,
        ),
        StatsRow(),
        Divider(
          color: Colors.black26,
          thickness: 0.5,
        ),
        ButtonsRow()
      ],
    );
  }
}