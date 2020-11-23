import 'package:flutter/material.dart';
import 'package:user_desc_task/models/all_posts.dart';


class PostColumn extends StatelessWidget {
  final AllPosts myPost;
  PostColumn(this.myPost);
  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Container(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(

            ),
            Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.65,
                      child: Text(
                        myPost.title.toString(),
                        style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                        )
                      ),
                    Padding(padding: EdgeInsets.all(3.0)),
                    Container(
                                  width: MediaQuery.of(context).size.width*0.65,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.5)
                  ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(3.5),
                  child: Image.network(
                    "https://picsum.photos/200",
                    fit: BoxFit.cover,
                    ))
                ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}