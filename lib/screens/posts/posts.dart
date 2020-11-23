import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:user_desc_task/models/all_posts.dart';
import 'package:user_desc_task/screens/posts/main_column.dart';
import 'package:http/http.dart' as http;
class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {

  Future<List> allPosts;

    Future<List<AllPosts>> _getPosts() async {
    final url = 'https://jsonplaceholder.typicode.com/posts';

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      List data = jsonResponse;
      print("data: $data");
      return data.map((post) => new AllPosts.fromJson(post)).toList();
    } else {
      throw Exception('Failed to load jobs from API');
    }
  }

  @override
  void initState() {
    super.initState();
    allPosts = _getPosts();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor: Colors.white,
      appBar: AppBar(
        // leading: IconButton(icon: I, onPressed: null),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text("Explore",
        style: TextStyle(
          color: Colors.black,
        ),
        ),
        actions: [
           IconButton(
                       icon: Icon(Icons.search,
          color: Colors.black,
          ), 
                       onPressed: null),
          Padding(padding: EdgeInsets.all(8.0))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
            child: FutureBuilder<List<AllPosts>>(
              future: allPosts,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemBuilder: (context, index){
                      return MainColumn(snapshot.data[index]);
                    });
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }

                // By default, show a loading spinner.
                return CircularProgressIndicator();
              },
            ),
          ),
      ),
    );
  }
}