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
      "picture":"images/products/dress1.jpeg",
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
            child: InkWell(onTap: (){},
              child: GridTile(
                footer: Container(
                  color: Colors.white,
                  child: ListTile(
                    leading:Text(prod_name),
                    title: Text("\$$prod_newprice"),
                    subtitle:Text("\$$prod_oldprice",style: TextStyle(decoration: TextDecoration.lineThrough),),
                  ),
                ),
                child:Image.asset(prod_pic,fit: BoxFit.cover),
              ),

            ),
          ),
        ),
    );
  }
}