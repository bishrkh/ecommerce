import 'package:ecommerce/core/resources/data_state.dart';
import 'package:ecommerce/features/products/cubit/products_state.dart';
import 'package:ecommerce/features/products/data/repo/product_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductRepo _productRepo;

  ProductsCubit(this._productRepo) : super(const ProductsState.empty());

  Future<void> getProducts() async {
    emit(const ProductsState.loading());
    await Future.delayed(const Duration(seconds: 2));
    final dataState = await _productRepo.getProducts();
    if (dataState is DataSuccess) {
      emit(ProductsState.done(dataState.data!));
    }
    if (dataState is DataFailed) {
      emit(ProductsState.error(dataState.error!));
    }
  }
}
