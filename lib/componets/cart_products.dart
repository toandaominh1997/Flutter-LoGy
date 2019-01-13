import 'package:flutter/material.dart';
import 'package:logy_app/pages/productDetails.dart';

class CartProducts extends StatefulWidget {
  @override
  CartProductsState createState() => CartProductsState();
}

class CartProductsState extends State<CartProducts> {
  var Product_on_the_cart = [
    {
    "name": "Red Blazer",
    "picture": "images/products/blazer1.jpeg",
    "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Red Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Red Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Red Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Red Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Red Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Red Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    }
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
      itemCount: Product_on_the_cart.length,
      itemBuilder: (context, index){
        return Single_cart_product(
          cart_prod_name: Product_on_the_cart[index]["name"],
          cart_prod_color: Product_on_the_cart[index]["color"],
          cart_prod_qty: Product_on_the_cart[index]["quantity"],
          cart_prod_size: Product_on_the_cart[index]["size"],
          cart_prod_price: Product_on_the_cart[index]["price"],
          cart_prod_picture: Product_on_the_cart[index]["picture"],
        );
      },
    );
  }
}

class Single_cart_product extends StatelessWidget{
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;
  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        leading: new Image.asset(cart_prod_picture, width: 100.0,
        height: 80.0,),
        title: new Text(cart_prod_name),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_size, style: TextStyle(color: Colors.red),),
                ),
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_color, style: TextStyle(color: Colors.red),),
                )
              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$${cart_prod_price}",
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.red),
              ),
            )
          ],
        ),
        trailing: new Column(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
            new Text("$cart_prod_qty"),
            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){})
          ],
        ),
      ),
    );
  }

  void addQuantity(){

  }
}
