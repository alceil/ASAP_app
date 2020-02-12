import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    home:HomePage()
      )
    );

}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          Text('Hello bitch',style: TextStyle(color: Colors.white),),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
        ],
      )
    );
  }
}
