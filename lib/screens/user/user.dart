import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:user_desc_task/models/user.dart';
import 'package:user_desc_task/screens/user/appbar_bottom.dart';
import 'package:http/http.dart' as http;

class User extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {



Future<UserProfile> fetchUser() async {
  final response = await http.get('https://reqres.in/api/users/2');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    print("body: ${response.body}");
     final jsonResponse = json.decode(response.body);
      var data = jsonResponse['data'];
      return UserProfile.fromJson(data);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

  Future<UserProfile> futureUser;

  @override
  void initState() {
    super.initState();
    futureUser = fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<UserProfile>(
  future: futureUser,
  builder: (context, snapshot) {
    if (snapshot.hasData) {
      return mainScaffold(snapshot.data);
    } else if (snapshot.hasError) {
      return Text("${snapshot.error}");
    }
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: CircularProgressIndicator(
          // value: 4,
        ),
      ),
    );
  },
);


  }

  Widget mainScaffold(UserProfile user){
    return     Scaffold(
              backgroundColor: Colors.white,
      appBar: AppBar(
        // automaticallyImplyLeading: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,
        color: Colors.black,
        ), onPressed: (){
          Navigator.pop(context);
        }),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text("Profile",
        style: TextStyle(
          color: Colors.black,
        ),
        ),
        actions: [
           IconButton(
                       icon: Icon(Icons.more_horiz,
          color: Colors.black,
          ), 
                       onPressed: null),
          Padding(padding: EdgeInsets.all(8.0))
        ],
        bottom: PreferredSize(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: AppBarBottom(user),
        ), 
        preferredSize: Size.fromHeight(300)
        ),
      ),
      body: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
           children: [
             Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Photos",
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.black,
                     fontSize: 16
                   ),
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       IconButton(
                         color: Colors.blue,
                         icon: Icon(Icons.list,
                         ), 
                         onPressed: () {}),
                         IconButton(
                           color: Colors.blue,
                           icon: Icon(Icons.grid_view), 
                         onPressed: () {}),                   ],
                   ),
                 ],
               ),

                Expanded(
                                  child: Container(
                    child: GridView.builder(
    itemCount: 20,
    gridDelegate:
      new SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 3,
    crossAxisSpacing: 15.0,
  mainAxisSpacing: 11.0,
  ),
    itemBuilder: (BuildContext context, int index) {
      return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.5)
      ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(3.5),
      child: Image.network("https://picsum.photos/id/${index+10}/200"))
    );
    }),
                  ),
                )

           ],
        ),
      ),
    );
  }
}