import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget widgetBuilder(String text,IconData icon){
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(text,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),),
      onTap: () {},
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Colors.amberAccent,
            child: Text('Cooling Up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
          ),
          widgetBuilder('Meals', Icons.restaurant),
          widgetBuilder('Filters', Icons.settings),
        ],
      ),
    );
  }
}
