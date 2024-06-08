import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_details_state.freezed.dart';

@freezed
class ProductDetailsState<T> with _$ProductDetailsState<T> {
  const factory ProductDetailsState.loading() = ProductDetailsLoading<T>;
  const factory ProductDetailsState.done(T data) = ProductDetailsDone<T>;
  const factory ProductDetailsState.error(dynamic error) =
      ProductDetailsError<T>;
}
