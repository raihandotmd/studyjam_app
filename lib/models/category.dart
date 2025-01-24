import 'package:flutter/material.dart';

class CategoryModel {
  IconData icon;
  bool isSelected;

  // Constructor
  CategoryModel({required this.icon, required this.isSelected});

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        icon: Icons.hiking, isSelected: false));
    categories.add(CategoryModel(
        icon: Icons.water, isSelected: false));
    categories.add(CategoryModel(
        icon: Icons.stream, isSelected: true));
    categories.add(CategoryModel(
        icon: Icons.park, isSelected: false));

    return categories;
  }
}
