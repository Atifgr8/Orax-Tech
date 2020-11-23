import 'package:flutter/material.dart';
import 'package:user_desc_task/screens/user/user.dart';


class UserRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
         icon:  Container(
        width: 35.0,
        height: 35.0,
        decoration: new BoxDecoration(
          
            shape: BoxShape.circle,
            image: new DecorationImage(
            fit: BoxFit.fill,
            image: new NetworkImage(
                   "https://picsum.photos/200")
                   )
  )
), 
          onPressed: (){
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => User()
      ));
  },),         
   Padding(padding: EdgeInsets.all(10.0)), 
     Column(
       crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Kristine Jones",
            style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700
          ),
            ),
            Text("20 Minutes ago",
            style: TextStyle(
            fontSize: 12.0,
            color: Colors.grey,
            fontWeight: FontWeight.w700
          ),
            ),
          ],
        ),
        Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.more_horiz,
                                            color: Colors.grey,
                      ), 
                  
        ),
        ),
      ],
    );
  }
}