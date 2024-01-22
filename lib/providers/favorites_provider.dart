import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app_flutter/models/meal.dart';

class FavoriteMealsNotifies extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifies() : super([]);

  bool toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);
    if (mealIsFavorite) {
      state = state.where((item) => item.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favoriteMealsProviders =
    StateNotifierProvider<FavoriteMealsNotifies, List<Meal>>((ref) {
  return FavoriteMealsNotifies();
});
