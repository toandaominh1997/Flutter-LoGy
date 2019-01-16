import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:logy_app/componets/horizontal_listview.dart';
import 'package:logy_app/componets/products.dart';
import 'package:logy_app/pages/cart.dart';
import 'package:logy_app/pages/aboutus.dart';
import 'package:logy_app/pages/favorite.dart';
import 'package:logy_app/pages/profile.dart';
import 'package:logy_app/pages/setting.dart';

class HomePage extends StatefulWidget{
  @override
  HomePageState createState()=> HomePageState();

}

class HomePageState extends State<HomePage>{
  int _selectedPage=0;
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
            new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,),
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
                })
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
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
                  },
                  child: ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                  )
              ),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> new Profile()));
                  },
                  child: ListTile(
                    title: Text("Profile"),
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
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
                  },
                  child: ListTile(
                    title: Text("Shopping cart"),
                    leading: Icon(Icons.shopping_cart),
                  )
              ),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> new Favorities()));
                  },
                  child: ListTile(
                    title: Text("Favorites"),
                    leading: Icon(Icons.favorite),
                  )
              ),
              Divider(),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> new Setting()));
                },
                  child: ListTile(
                    title: Text("Settings"),
                    leading: Icon(Icons.settings, color: Colors.blue),
                  )
              ),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> new AboutUs()));
                  },
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
          //image carousel begins here
          image_carousel,

          //padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),),

          //Horizontal list view begins here
          HorizontalList(),

          //padding widget
          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent products'),),

          //grid view
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index){
          if(index==0){
            //envent at Here
            Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
          }
          else if(index==1){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
          }
          else if(index==2){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> new Favorities()));
          }
          else if(index==3){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> new Profile()));
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black,),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black,),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.black,),
              title: Text('Favorite')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black,),
              title: Text('Profile')
          ),
        ],
      ),
    );
  }
}
