// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:ecommerce/core/api/dio_consumer.dart';
import 'package:ecommerce/core/api/end_points.dart';
import 'package:ecommerce/core/resources/data_repo_impl.dart';
import 'package:ecommerce/core/resources/data_state.dart';
import 'package:ecommerce/features/categories/data/models/categories_model.dart';
import 'package:ecommerce/features/categories/data/repo/category_repo.dart';

class CategoryRepoImpl implements CategoryRepo {
  DioConsumer dioConsumer;
  DataRepoImpl dataRepoImpl;
  CategoryRepoImpl({
    required this.dioConsumer,
    required this.dataRepoImpl,
  });
  @override
  Future<DataState<CategoriesModel>> getCategories() async {
    Response? response =
        await dioConsumer.get(EndPoints.baseURL + EndPoints.categories);

    return dataRepoImpl.dataRepoRequest(
        response: response!, fromJson: CategoriesModel.fromJson);
  }
}
