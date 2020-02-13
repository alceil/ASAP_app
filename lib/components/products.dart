import 'package:flutter/material.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list=[
    {
      "name":"Blazer",
       "picture":"images/products/blazer1.jpeg",
      "old_price":"100",
        "price":"50"
    },
    {
      "name":"Blazer",
      "picture":"images/products/blazer1.jpeg",
      "old_price":"100",
      "price":"50"
    },
    {
      "name":"Blazer",
      "picture":"images/products/blazer1.jpeg",
      "old_price":"100",
      "price":"50"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) , itemBuilder: )
  }
}
class Single_prod extends StatelessWidget {
  final  prod_name;
  final  prod_pic;
  final  prod_oldprice;
  final  prod_newprice;
  Single_prod({this.prod_name,this.prod_newprice,this.prod_oldprice,this.prod_pic});
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
