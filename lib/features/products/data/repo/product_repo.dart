import 'package:ecommerce/core/resources/data_state.dart';
import 'package:ecommerce/features/products/data/models/product.dart';
import 'package:ecommerce/features/products/data/models/products_model.dart';

abstract class ProductRepo {
  Future<DataState<ProductsModel>> getProducts();
  Future<DataState<Product>> getProductDetails({required int id});
}
