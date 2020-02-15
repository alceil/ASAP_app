import 'package:flutter/material.dart';
class Cart_Products extends StatefulWidget {
 @override
  _Cart_ProductsState createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products> {
  var CPL =[
    {
      "name":"Blazer",
      "picture":"images/products/blazer1.jpeg",
      "price":"50",
      "Size" : "M",
      "Color" : "White",
      "quantity" : 1
    },
    {
      "name":"Reddress",
      "picture":"images/products/dress1.jpeg",
      "price":"50",
      "Size" : "L",
      "Color" : "Red",
      "quantity" : 1
    },

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:2,itemBuilder:(context,index){
      return Single_cartProducts(
        cart_prod_name: CPL[index]["name"],
        cart_prod_newprice: CPL[index]["name"],
        cart_prod_pic: CPL[index]["name"],
        cart_prod_name: CPL[index]["name"],

      );
    } );
  }
}
class Single_cartProducts extends StatelessWidget {
  final  cart_prod_name;
  final  cart_prod_pic;
  final  cart_prod_newprice;
  final cart_prod_size;
  Single_cartProducts({this.cart_prod_name,this.cart_prod_newprice,this.cart_prod_pic,this.cart_prod_size});
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
