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
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,builder: (context){
                    return AlertDialog(
                      title: Text('Size'),
                      content:Text('choose the size'),
                      actions: <Widget>[
                        MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                          child: Text('Close'),
                        )
                      ],
                    );
                  }
                  );
                },
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
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,builder: (context){
                    return AlertDialog(
                      title: Text('Color'),
                      content:Text('choose the color'),
                      actions: <Widget>[
                        MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                          child: Text('Close'),
                        )
                      ],
                    );
                  }
                  );
                },
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
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,builder: (context){
                    return AlertDialog(
                      title: Text('Quantity'),
                      content:Text('choose the Quantity'),
                      actions: <Widget>[
                        MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                          child: Text('Close'),
                        )
                      ],
                    );
                  }
                  );
                },
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
              IconButton(icon: Icon(Icons.shopping_cart),color: Colors.red, onPressed: (){}),
              IconButton(icon: Icon(Icons.favorite),color: Colors.red, onPressed: (){})
            ],
          ),
          ListTile(
            title: Text('Product details'),
            subtitle: Text("orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child:Text('Product Name')),
              Padding(padding: const EdgeInsets.all(5.0),
                  child:Text(widget.pdt_name))
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child:Text('Product Brand')),
              Padding(padding: const EdgeInsets.all(5.0),
                  child:Text('Brand X'))
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child:Text('Product Condition')),
              Padding(padding: const EdgeInsets.all(5.0),
                  child:Text('New'))
            ],
          )
        ],
      ),
    );
  }
}
