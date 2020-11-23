import 'package:flutter/material.dart';
import 'package:user_desc_task/models/all_posts.dart';
import 'package:user_desc_task/screens/posts/post_row.dart';
import 'package:user_desc_task/screens/posts/user_row.dart';


class MainColumn extends StatelessWidget {
  final AllPosts myPost;
  MainColumn(this.myPost);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
                children: [
            UserRow(),
            PostRow(myPost)
          ]
      ),
    );
  }
}