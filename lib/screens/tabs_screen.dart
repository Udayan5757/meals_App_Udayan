import 'package:flutter/material.dart';
import 'package:mealsapp/Widgets/main_drawer.dart';
import 'package:mealsapp/screens/favourites_screen.dart';
import './categories_screen.dart';
class TabScreen extends StatefulWidget {
  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int selectedIndex=0;
  final List<Map<String,Object>> _pages = [
    {'page':CategoriesScreen(),'title':'Categories'},
    {'page':FavouritesScreen(),'title':'My Favourites'},
  ];
  void _selectPage(int index){
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(_pages[selectedIndex]['title'] as String,),
      ),
      body: _pages[selectedIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.amberAccent,
        currentIndex: selectedIndex,
        //type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category,),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star,),
            label: 'Favourites',
          ),
        ],
      ),
    );
  }
}
