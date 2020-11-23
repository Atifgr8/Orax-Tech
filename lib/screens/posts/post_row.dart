import 'package:flutter/material.dart';
import 'package:user_desc_task/models/all_posts.dart';
import 'package:user_desc_task/screens/posts/like_comment_column.dart';
import 'package:user_desc_task/screens/posts/post_column.dart';


class PostRow extends StatelessWidget {
  final AllPosts myPost;
  PostRow(this.myPost);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                LikeCommentColumn(),
                PostColumn(myPost),
              ]
      ),
    );
  }
}