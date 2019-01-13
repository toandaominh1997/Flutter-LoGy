import 'package:flutter/material.dart';
import 'package:logy_app/componets/cart_products.dart';
class Cart extends StatefulWidget{
  @override
  CartState createState() => CartState();
}

class CartState extends State<Cart>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('cart'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: null)
        ],
      ),
      body: new CartProducts(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title: new Text("Total:"),
              subtitle: new Text("\$230"),
            )),
            Expanded(
              child: new MaterialButton(onPressed: (){},
              child: new Text("Check out", style: TextStyle(color: Colors.white)), color: Colors.red,)
            )
          ],
        ),
      ),
    );
  }

}