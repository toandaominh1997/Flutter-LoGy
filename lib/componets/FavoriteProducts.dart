import 'package:flutter/material.dart';
import 'package:logy_app/pages/productDetails.dart';
import 'package:logy_app/componets/rate.dart';
class FavoriteProducts extends StatefulWidget {
  @override
  FavoriteProductsState createState() => FavoriteProductsState();
}

class FavoriteProductsState extends State<FavoriteProducts> {
  var Favorite_on_the_cart = [
    {
      "name": "Cảm Ơn Người Lớn(Bìa Mềm)",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "old__price": 100,
      "rate": 4,
      "quantity": 1,
    },
    {
      "name": "Cảm Ơn Người Lớn(Bìa Mềm)",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "old__price": 100,
      "rate": 4,
      "quantity": 1,
    },
    {
      "name": "Cảm Ơn Người Lớn(Bìa Mềm)",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "old__price": 100,
      "rate": 4,
      "quantity": 1,
    },
    {
      "name": "Cảm Ơn Người Lớn(Bìa Mềm)",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "old__price": 100,
      "rate": 4,
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
      "name": "Cảm Ơn Người Lớn(Bìa Mềm)",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "old__price": 100,
      "rate": 4,
      "quantity": 1,
    },
    {
      "name": "Cảm Ơn Người Lớn(Bìa Mềm)",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "old__price": 100,
      "rate": 4,
      "quantity": 1,
    }
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
      itemCount: Favorite_on_the_cart.length,
      itemBuilder: (conteavoriteavoritext, index){
        return Single_cart_product(
          cart_prod_name: Favorite_on_the_cart[index]["name"],
          cart_prod_color: Favorite_on_the_cart[index]["rate"],
          cart_prod_qty: Favorite_on_the_cart[index]["quantity"],
          cart_prod_size: Favorite_on_the_cart[index]["size"],
          cart_prod_price: Favorite_on_the_cart[index]["price"],
          cart_prod_picture: Favorite_on_the_cart[index]["picture"],
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
  double rating = 3.5;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        leading: new Image.asset(cart_prod_picture, width: 120.0,
          height: 130.0,),
        title: new Text(cart_prod_name),
        subtitle: new Column(
          children: <Widget>[
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$ ${cart_prod_price}",
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.red),
              ),
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                  "\$ ${cart_prod_price}",
                  style: TextStyle(
                      color: Colors.black54,
                      decoration
                          :TextDecoration.lineThrough)
              ),
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: new Icon(
                Icons.star, color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
