import 'package:ecommerce/features/products/data/models/product.dart';

class ProductsModel {
  final List<Product> products;
  ProductsModel({
    required this.products,
  });

  factory ProductsModel.fromJson(List<dynamic> map) {
    print('bishr');
    print(map);
    return ProductsModel(
      products: List<Product>.from(
        (map).map<Product>(
          (x) => Product.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }
}
