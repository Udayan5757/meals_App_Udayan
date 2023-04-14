import 'package:flutter/material.dart';
import 'package:mealsapp/screens/category_meals_screen.dart';
import 'package:mealsapp/screens/tabs_screen.dart';
import 'screens/categories_screen.dart';
import 'screens/meal_detail_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(secondary: Colors.amber),
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1 : TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          bodyText2 : TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          subtitle1: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.w400,
          )
        ),
      ),
      home: TabScreen(),
      routes: {
        CategoryMealsScreen.routName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routName:(ctx) => MealDetailScreen(),
      },
    );
  }
}
