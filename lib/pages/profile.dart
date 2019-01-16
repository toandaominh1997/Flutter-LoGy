import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Profile"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "My Profile",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}