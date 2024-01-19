import 'package:flutter/material.dart';
import 'package:meals_app_flutter/screen/meals.dart';
import 'package:meals_app_flutter/widgets/category_grid.dart';

import '../models/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (ctx) => MealsScreen(meals: [], title: "Some title")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pick your category"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          for (final category in availableCategories)
            CategoryGridItem(
              category: category,
              onSelectCategory: () {
                _selectCategory(context);
              },
            )
        ],
      ),
    );
  }
}
