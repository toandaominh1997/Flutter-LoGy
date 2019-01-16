import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  AboutUsState createState() => AboutUsState();
}

class AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("About Us"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "About Logy",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}