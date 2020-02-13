import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecomapp_flutter/components/horizontal_listview.dart';
import 'package:ecomapp_flutter/components/products.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel =  Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/m1.jpeg'),
          AssetImage('images/c1.jpg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg')
        ],
//        autoplay: false,
        animationCurve:Curves.fastOutSlowIn ,
        animationDuration:Duration(milliseconds: 1000),
        dotSize: 3.0,
        indicatorBgPadding: 5.0,
      ),
    );
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
    drawer: Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(accountName: Text('Ashish Tom'), accountEmail: Text('ashishshajisrampickal@gmail.com'),
          currentAccountPicture: GestureDetector(
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.people,color: Colors.white,)
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('HomePage'),
              leading: Icon(Icons.home),
            ),
          ),

          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('My account'),
              leading: Icon(Icons.person),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('My Orders'),
              leading: Icon(Icons.shopping_basket),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('categories'),
              leading: Icon(Icons.category),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Favourites'),
              leading: Icon(Icons.favorite),
            ),
          ),
          Divider(),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.help),
            ),
          ),

        ],
      ),
    ),
      body: ListView(
        children: <Widget>[
          image_carousel,
          Padding(padding: const EdgeInsets.all(1.0),
          child: Text('Categories'),),
          HorizontalList(),
          Padding(padding: const EdgeInsets.all(20.0),
            child: Text('Recent products'),),
          Container(
            height: 320,
            child: Products(),
          )

        ],
      ),
    );
  }
}
