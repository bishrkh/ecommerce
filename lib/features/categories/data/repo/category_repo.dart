import 'package:ecommerce/core/resources/data_state.dart';
import 'package:ecommerce/features/categories/data/models/categories_model.dart';

abstract class CategoryRepo {
  Future<DataState<CategoriesModel>> getCategories();
}
