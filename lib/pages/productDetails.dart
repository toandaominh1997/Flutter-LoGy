import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget{
  final product_name;
  final product_image;
  final product_price;
  final product_old_price;

  ProductDetails({
    this.product_name,
    this.product_image,
    this.product_price,
    this.product_old_price,
});
  @override
  ProductDetailsState createState() => ProductDetailsState();

}
class ProductDetailsState extends State<ProductDetails>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container();
  }

}