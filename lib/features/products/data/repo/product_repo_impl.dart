// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:ecommerce/core/api/dio_consumer.dart';
import 'package:ecommerce/core/api/end_points.dart';
import 'package:ecommerce/core/resources/data_repo_impl.dart';
import 'package:ecommerce/core/resources/data_state.dart';
import 'package:ecommerce/features/products/data/models/product.dart';
import 'package:ecommerce/features/products/data/models/products_model.dart';
import 'package:ecommerce/features/products/data/repo/product_repo.dart';

class ProductRepoImpl implements ProductRepo {
  DioConsumer dioConsumer;
  DataRepoImpl dataRepoImpl;
  ProductRepoImpl({
    required this.dioConsumer,
    required this.dataRepoImpl,
  });
  @override
  Future<DataState<ProductsModel>> getProducts() async {
    Response? response =
        await dioConsumer.get(EndPoints.baseURL + EndPoints.products);

    return dataRepoImpl.dataRepoRequest(
        response: response!, fromJson: ProductsModel.fromJson);
  }

  @override
  Future<DataState<Product>> getProductDetails({required int id}) async {
    Response? response = await dioConsumer
        .get(EndPoints.baseURL + EndPoints.productDetails + id.toString());

    return dataRepoImpl.dataRepoRequest(
        response: response!, fromJson: Product.fromMap);
  }
}
