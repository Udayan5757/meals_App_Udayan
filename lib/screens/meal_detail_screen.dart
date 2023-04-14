import 'package:flutter/material.dart';
import '../dummy_data.dart';
class MealDetailScreen extends StatelessWidget {
  static const routName = '/meals-Details';

  Widget buildSection(BuildContext context,String text){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6,horizontal: 5),
      child: Text(text,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
  Widget buildContainer(Widget child){
    return  Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
      child: child,
    );
  }
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments;
    final selectMeal = DUMMY_MEALS.firstWhere((element) => element.id==mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipie of the Item'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 250,
              width: double.infinity,
              child: Image.network(selectMeal.imageUrl,fit: BoxFit.cover,),
            ),
            buildSection(context,'Ingredients'),
            buildContainer(ListView.builder(itemBuilder: (ctx,index){
                return Card(
                    color: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                    child: Text(selectMeal.ingredients[index]),
                  ),
                );
              },
              itemCount: selectMeal.ingredients.length,
              )
            ),
            buildSection(context,'Steps'),
            buildContainer(
              ListView.builder(itemBuilder: (ctx,index) => Column(
                children: [ListTile(
                  leading: CircleAvatar(child: Text('# ${index + 1}'),),
                  title: Text(selectMeal.steps[index],),
                ),
                  Divider(color: Colors.grey),
                ]
              ),
                itemCount: selectMeal.steps.length, 
              )
            ),
          ],
        ),
      ),
    );
  }
}
