import 'package:flutter/material.dart';
import 'package:logy_app/pages/cart.dart';
class ProductDetails extends StatefulWidget{
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
});
  @override
  ProductDetailsState createState() => ProductDetailsState();

}
class ProductDetailsState extends State<ProductDetails>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: new AppBar(
            elevation: 0.1,
            backgroundColor: Colors.red,
            title: Text("Logy"),
            actions:<Widget>[
            new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: null),
            new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: null)
    ]
    ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(child: Container(
              color: Colors.white,
              child: Image.asset(widget.product_detail_picture),
            ),
            footer: new Container(
              color: Colors.white70,
              child: ListTile(
                leading: new Text(widget.product_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                title: new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("\$${widget.product_detail_old_price}",
                      style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),),

                    ),
                    Expanded(
                      child: new Text("\$${widget.product_detail_new_price}",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red
                      ),),
                    )
                  ],
                ),
              ),
            ),

            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("size"),),
                      Expanded(child: new Icon(Icons.arrow_drop_down),)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Color"),),
                      Expanded(child: new Icon(Icons.arrow_drop_down),)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Qty"),),
                      Expanded(child: new Icon(Icons.arrow_drop_down),)
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
                },
                color: Colors.red,
                textColor: Colors.white,
                elevation: 0.2,
                child: new Text("Buy now"),),
              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.red,onPressed: (){}),
              new IconButton(icon: Icon(Icons.favorite_border), color: Colors.red,onPressed: (){})
            ],
          )
        ],
      )
    );
  }

}