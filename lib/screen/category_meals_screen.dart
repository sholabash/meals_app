// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../widget/meal_item.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final categoryTitle = routArgs['title'];
    final categoryId = routArgs['id'];
    final CategoryMeals = DUMMY_MEALS.where(
      (meal) {
        return meal.categories.contains(categoryId);
      },
    ).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: CategoryMeals[index].id,
            title: CategoryMeals[index].title,
            imageUrl: CategoryMeals[index].imageUrl,
            affordability: CategoryMeals[index].affordability,
            complexity: CategoryMeals[index].complexity,
            duration: CategoryMeals[index].duration,
          );
        },
        itemCount: CategoryMeals.length,
      ),
    );
  }
}
