import 'package:flutter/material.dart';
class ProductDetails extends StatefulWidget {
 final pdt_name;
 final pdt_oldprice;
 final pdt_newprice;
 final pdt_picture;
ProductDetails({this.pdt_name,this.pdt_newprice,this.pdt_oldprice,this.pdt_picture});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: Text('FashApp'),
        actions: <Widget>[
          IconButton(icon:Icon(Icons.search,color: Colors.white,) , onPressed: (){}),
          IconButton(icon:Icon(Icons.shopping_cart,color: Colors.white,) , onPressed: (){})
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.pdt_picture),
              )
            ),
          )
        ],
      ),
    );
  }
}
