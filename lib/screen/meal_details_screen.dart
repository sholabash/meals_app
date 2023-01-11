import 'package:flutter/material.dart';

class MealDetailsscreen extends StatelessWidget {
  static const routeName = '/meat-datail';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('$mealId'),
      ),
      body: Center(
        child: Text('meal details - $mealId!'),
      ),
    );
  }
}
