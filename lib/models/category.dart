class CategoryModel {
  String vector;
  bool isSelected;

  // Constructor
  CategoryModel({required this.vector, required this.isSelected});

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        vector: 'assets/vectors/Notification.svg', isSelected: false));
    categories.add(CategoryModel(
        vector: 'assets/vectors/Notification.svg', isSelected: false));
    categories.add(CategoryModel(
        vector: 'assets/vectors/Notification.svg', isSelected: true));
    categories.add(CategoryModel(
        vector: 'assets/vectors/Notification.svg', isSelected: false));

    return categories;
  }
}
