import 'package:ecommerce/core/resources/data_state.dart';
import 'package:ecommerce/features/products/cubit/product_details_state.dart';
import 'package:ecommerce/features/products/data/repo/product_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  final ProductRepo _productRepo;

  ProductDetailsCubit(this._productRepo)
      : super(const ProductDetailsState.loading());

  Future<void> getProductDetails({required int id}) async {
    emit(const ProductDetailsState.loading());
    await Future.delayed(const Duration(seconds: 2));
    final dataState = await _productRepo.getProductDetails(id: id);
    if (dataState is DataSuccess) {
      emit(ProductDetailsState.done(dataState.data!));
    }
    if (dataState is DataFailed) {
      emit(ProductDetailsState.error(dataState.error!));
    }
  }
}
