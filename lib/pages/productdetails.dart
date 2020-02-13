import 'package:flutter/material.dart';
class ProductDetails extends StatefulWidget {
 final pdt_name;
 final String  pdt_oldprice;
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
              ),
             footer:Container(
                color: Colors.white70,
              child:ListTile(
                leading: Text(widget.pdt_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                title: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("\$${widget.pdt_oldprice}"),
                    ),
                    Expanded(
                      child: Text("\$${widget.pdt_newprice}",style: TextStyle(decoration: TextDecoration.lineThrough),),
                    )
                  ],
                ),

              )
            ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed: (){},
                  color: Colors.white,
                  textColor: Colors.grey,
                  child:Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Size'),
                      ),
                      Expanded(
                          child: Icon(Icons.arrow_drop_down)
                      )
                    ],
                  )
                ),
              ),
              Expanded(
                child: MaterialButton(onPressed: (){},
                    color: Colors.white,
                    textColor: Colors.grey,
                    child:Row(
                      children: <Widget>[
                        Expanded(
                          child: Text('Color'),
                        ),
                        Expanded(
                            child: Icon(Icons.arrow_drop_down)
                        )
                      ],
                    )
                ),
              ),
              Expanded(
                child: MaterialButton(onPressed: (){},
                    color: Colors.white,
                    textColor: Colors.grey,
                    child:Row(
                      children: <Widget>[
                        Expanded(
                          child: Text('Qty'),
                        ),
                        Expanded(
                            child: Icon(Icons.arrow_drop_down)
                        )
                      ],
                    )
                ),
              )


            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed: (){},
                    color: Colors.red,
                    textColor: Colors.white,
                    child:Text('Buy Now'),
                ),
              ),
              IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){}),
              IconButton(icon: Icon(Icons.favorite), onPressed: (){})
            ],
          )
        ],
      ),
    );
  }
}
