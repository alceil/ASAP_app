import 'package:flutter/material.dart';
class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: Text('Cart'),
        actions: <Widget>[
          IconButton(icon:Icon(Icons.search,color: Colors.white,) , onPressed: (){}),
        ],
      ),
      bottomNavigationBar:Container(
        color: Colors.white,
        child:Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                leading: Text("Total:"),
                subtitle: Text("\$75"),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: (){},
                color: Colors.red,
                child: Text('Check out',style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        )
      )
    );
  }
}
