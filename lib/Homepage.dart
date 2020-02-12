import 'package:flutter/material.dart';
//class HomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//        color: Colors.blue,
//        child: Column(
//          children: <Widget>[
//            Text('Hello bitch',style: TextStyle(color: Colors.white),),
//            Icon(
//              Icons.person,
//              color: Colors.white,
//            ),
//          ],
//        )
//    );
//  }
//}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Text('Hey kidoo',style: TextStyle(color:Colors.white
      ),),
    );
  }
}
