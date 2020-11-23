import 'package:flutter/material.dart';


class LikeCommentColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
                          Icon(Icons.chat_bubble_outline,
                          color: Colors.blue,
                          ), 
                                 Text("254",
                                 style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w700
          ),
          ),

          Padding(padding: EdgeInsets.all(8.0)),
Icon(Icons.favorite_border,
color: Colors.blue,
), 
           Text("3456",
           style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w700
          ),
           ),
        ],
      ),
    );
  }
}