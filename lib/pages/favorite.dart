import 'package:flutter/material.dart';
import 'package:logy_app/componets/FavoriteProducts.dart';
class Favorities extends StatefulWidget {
  @override
  FavoritiesState createState() => FavoritiesState();
}

class FavoritiesState extends State<Favorities>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Favorite'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: null)
        ],
      ),
      body: new FavoriteProducts(),
    );
  }

}