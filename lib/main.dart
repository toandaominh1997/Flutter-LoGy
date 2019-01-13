import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:logy_app/componets/horizontal_listview.dart';
import 'package:shopapp_tut/componets/products.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}
class HomePage extends StatefulWidget{
  @override
  HomePageState createState()=> HomePageState();

}

class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget image_carousel = new Container(
      height: 200.0,
      child:  new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/w3.jpeg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/c1.jpg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/m2.jpg'),
        ],
        autoplay: false,
        //      animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text("Logy"),
        actions:<Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: null),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: null)
        ]
      ),
      
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: Text("Bigkizd"),
                accountEmail: Text("toandaominh1997@gmail.com"),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white,),
                  ),
                ),
              decoration: new BoxDecoration(
                color: Colors.red
              ),
            ),
            InkWell(
                child: ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                )
            ),
            InkWell(
                child: ListTile(
                  title: Text("My account"),
                  leading: Icon(Icons.person),
                )
            ),
            InkWell(
                child: ListTile(
                  title: Text("My orders"),
                  leading: Icon(Icons.shopping_basket),
                )
            ),
            InkWell(
                child: ListTile(
                  title: Text("Categories"),
                  leading: Icon(Icons.dashboard),
                )
            ),
            InkWell(
                child: ListTile(
                  title: Text("Favorites"),
                  leading: Icon(Icons.favorite),
                )
            ),
            Divider(),
            InkWell(
                child: ListTile(
                  title: Text("Settings"),
                  leading: Icon(Icons.settings, color: Colors.blue),
                )
            ),
            InkWell(
                child: ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.help, color: Colors.green,),
                )
            ),
          ],
        )
      ),
      body: new ListView(
        children: <Widget>[
          image_carousel,
          //padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),),

          //Horizontal list view begins here
          HorizontalList(),
        ],
      )
    );
    return null;
  }

}