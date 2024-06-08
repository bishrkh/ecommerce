import 'package:ecommerce/core/resources/data_state.dart';
import 'package:ecommerce/features/categories/cubit/categories_state.dart';
import 'package:ecommerce/features/categories/data/repo/category_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final CategoryRepo _categoryRepo;

  CategoriesCubit(this._categoryRepo) : super(const CategoriesState.empty());

  Future<void> getCategories() async {
    emit(const CategoriesState.loading());
    await Future.delayed(const Duration(seconds: 2));
    final dataState = await _categoryRepo.getCategories();
    if (dataState is DataSuccess) {
      emit(CategoriesState.done(dataState.data!));
    }
    if (dataState is DataFailed) {
      emit(CategoriesState.error(dataState.error!));
    }
  }
}
