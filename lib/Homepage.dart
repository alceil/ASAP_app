import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('FashApp'),
        actions: <Widget>[
          IconButton(icon:Icon(Icons.search,color: Colors.white,) , onPressed: (){}),
          IconButton(icon:Icon(Icons.shopping_cart,color: Colors.white,) , onPressed: (){})
        ],
      ),
    drawer: Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(accountName: Text('Ashish Tom'), accountEmail: Text('ashishshajisrampickal@gmail.com')),
          

        ],
      ),
    ),
    );
  }
}
