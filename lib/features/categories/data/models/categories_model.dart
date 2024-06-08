class CategoriesModel {
  List<dynamic> categories;
  CategoriesModel({
    required this.categories,
  });

  factory CategoriesModel.fromJson(List<dynamic> data) {
    return CategoriesModel(
        categories: List<dynamic>.from(
      data,
    ));
  }
}
