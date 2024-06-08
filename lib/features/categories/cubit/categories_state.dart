import 'package:freezed_annotation/freezed_annotation.dart';
part 'categories_state.freezed.dart';

@freezed
class CategoriesState<T> with _$CategoriesState<T> {
  const factory CategoriesState.empty() = CategoriesEmpty<T>;
  const factory CategoriesState.loading() = CategoriesLoading<T>;
  const factory CategoriesState.done(T data) = CategoriesDone<T>;
  const factory CategoriesState.error(dynamic error) = CategoriesError<T>;
}
