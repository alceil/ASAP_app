import 'package:flutter/material.dart';
import 'package:ecomapp_flutter/pages/productdetails.dart';
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
      "name":"Reddress",
      "picture":"images/products/dress1.jpeg",
      "old_price":"100",
      "price":"50"
    },
    {
      "name":"Hills",
      "picture":"images/products/hills1.jpeg",
      "old_price":"100",
      "price":"50"
    },
    {
      "name":"Pants",
      "picture":"images/products/pants1.jpg",
      "old_price":"100",
      "price":"50"
    },
    {
      "name":"Shoe",
      "picture":"images/products/shoe1.jpg",
      "old_price":"100",
      "price":"50"
    },
    {
      "name":"Skirt",
      "picture":"images/products/sk1.jpeg",
      "old_price":"100",
      "price":"50"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index)
        {
        return Single_prod(
          prod_name: product_list[index]['name'],
          prod_pic: product_list[index]['picture'],
          prod_oldprice: product_list[index]['old_price'],
          prod_newprice: product_list[index]['price'],
        );
    }
    );
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
    return Card(
        child: Hero(tag: prod_name,
          child:Material(
            child: InkWell(onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetails(pdt_name:prod_name,pdt_newprice: prod_newprice,pdt_oldprice: prod_oldprice,pdt_picture: prod_pic,))),
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text(prod_name)),
                      Text("\$${prod_newprice}")
                    ],
                  )
                ),
                child:Image.asset(prod_pic,fit: BoxFit.cover),
              ),

            ),
          ),
        ),
    );
  }
}
