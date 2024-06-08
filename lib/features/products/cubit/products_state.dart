import 'package:freezed_annotation/freezed_annotation.dart';
part 'products_state.freezed.dart';

@freezed
class ProductsState<T> with _$ProductsState<T> {
  const factory ProductsState.empty() = ProductsEmpty<T>;
  const factory ProductsState.loading() = ProductsLoading<T>;
  const factory ProductsState.done(T data) = ProductsDone<T>;
  const factory ProductsState.error(dynamic error) = ProductsError<T>;
}
