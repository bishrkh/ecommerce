// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductDetailsState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) done,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? done,
    TResult? Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? done,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductDetailsLoading<T> value) loading,
    required TResult Function(ProductDetailsDone<T> value) done,
    required TResult Function(ProductDetailsError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailsLoading<T> value)? loading,
    TResult? Function(ProductDetailsDone<T> value)? done,
    TResult? Function(ProductDetailsError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductDetailsLoading<T> value)? loading,
    TResult Function(ProductDetailsDone<T> value)? done,
    TResult Function(ProductDetailsError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsStateCopyWith<T, $Res> {
  factory $ProductDetailsStateCopyWith(ProductDetailsState<T> value,
          $Res Function(ProductDetailsState<T>) then) =
      _$ProductDetailsStateCopyWithImpl<T, $Res, ProductDetailsState<T>>;
}

/// @nodoc
class _$ProductDetailsStateCopyWithImpl<T, $Res,
        $Val extends ProductDetailsState<T>>
    implements $ProductDetailsStateCopyWith<T, $Res> {
  _$ProductDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductDetailsLoadingImplCopyWith<T, $Res> {
  factory _$$ProductDetailsLoadingImplCopyWith(
          _$ProductDetailsLoadingImpl<T> value,
          $Res Function(_$ProductDetailsLoadingImpl<T>) then) =
      __$$ProductDetailsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ProductDetailsLoadingImplCopyWithImpl<T, $Res>
    extends _$ProductDetailsStateCopyWithImpl<T, $Res,
        _$ProductDetailsLoadingImpl<T>>
    implements _$$ProductDetailsLoadingImplCopyWith<T, $Res> {
  __$$ProductDetailsLoadingImplCopyWithImpl(
      _$ProductDetailsLoadingImpl<T> _value,
      $Res Function(_$ProductDetailsLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductDetailsLoadingImpl<T> implements ProductDetailsLoading<T> {
  const _$ProductDetailsLoadingImpl();

  @override
  String toString() {
    return 'ProductDetailsState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) done,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? done,
    TResult? Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? done,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductDetailsLoading<T> value) loading,
    required TResult Function(ProductDetailsDone<T> value) done,
    required TResult Function(ProductDetailsError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailsLoading<T> value)? loading,
    TResult? Function(ProductDetailsDone<T> value)? done,
    TResult? Function(ProductDetailsError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductDetailsLoading<T> value)? loading,
    TResult Function(ProductDetailsDone<T> value)? done,
    TResult Function(ProductDetailsError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductDetailsLoading<T> implements ProductDetailsState<T> {
  const factory ProductDetailsLoading() = _$ProductDetailsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ProductDetailsDoneImplCopyWith<T, $Res> {
  factory _$$ProductDetailsDoneImplCopyWith(_$ProductDetailsDoneImpl<T> value,
          $Res Function(_$ProductDetailsDoneImpl<T>) then) =
      __$$ProductDetailsDoneImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ProductDetailsDoneImplCopyWithImpl<T, $Res>
    extends _$ProductDetailsStateCopyWithImpl<T, $Res,
        _$ProductDetailsDoneImpl<T>>
    implements _$$ProductDetailsDoneImplCopyWith<T, $Res> {
  __$$ProductDetailsDoneImplCopyWithImpl(_$ProductDetailsDoneImpl<T> _value,
      $Res Function(_$ProductDetailsDoneImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ProductDetailsDoneImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ProductDetailsDoneImpl<T> implements ProductDetailsDone<T> {
  const _$ProductDetailsDoneImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ProductDetailsState<$T>.done(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsDoneImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsDoneImplCopyWith<T, _$ProductDetailsDoneImpl<T>>
      get copyWith => __$$ProductDetailsDoneImplCopyWithImpl<T,
          _$ProductDetailsDoneImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) done,
    required TResult Function(dynamic error) error,
  }) {
    return done(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? done,
    TResult? Function(dynamic error)? error,
  }) {
    return done?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? done,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductDetailsLoading<T> value) loading,
    required TResult Function(ProductDetailsDone<T> value) done,
    required TResult Function(ProductDetailsError<T> value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailsLoading<T> value)? loading,
    TResult? Function(ProductDetailsDone<T> value)? done,
    TResult? Function(ProductDetailsError<T> value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductDetailsLoading<T> value)? loading,
    TResult Function(ProductDetailsDone<T> value)? done,
    TResult Function(ProductDetailsError<T> value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class ProductDetailsDone<T> implements ProductDetailsState<T> {
  const factory ProductDetailsDone(final T data) = _$ProductDetailsDoneImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$ProductDetailsDoneImplCopyWith<T, _$ProductDetailsDoneImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductDetailsErrorImplCopyWith<T, $Res> {
  factory _$$ProductDetailsErrorImplCopyWith(_$ProductDetailsErrorImpl<T> value,
          $Res Function(_$ProductDetailsErrorImpl<T>) then) =
      __$$ProductDetailsErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$ProductDetailsErrorImplCopyWithImpl<T, $Res>
    extends _$ProductDetailsStateCopyWithImpl<T, $Res,
        _$ProductDetailsErrorImpl<T>>
    implements _$$ProductDetailsErrorImplCopyWith<T, $Res> {
  __$$ProductDetailsErrorImplCopyWithImpl(_$ProductDetailsErrorImpl<T> _value,
      $Res Function(_$ProductDetailsErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ProductDetailsErrorImpl<T>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ProductDetailsErrorImpl<T> implements ProductDetailsError<T> {
  const _$ProductDetailsErrorImpl(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'ProductDetailsState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsErrorImpl<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsErrorImplCopyWith<T, _$ProductDetailsErrorImpl<T>>
      get copyWith => __$$ProductDetailsErrorImplCopyWithImpl<T,
          _$ProductDetailsErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) done,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? done,
    TResult? Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? done,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductDetailsLoading<T> value) loading,
    required TResult Function(ProductDetailsDone<T> value) done,
    required TResult Function(ProductDetailsError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailsLoading<T> value)? loading,
    TResult? Function(ProductDetailsDone<T> value)? done,
    TResult? Function(ProductDetailsError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductDetailsLoading<T> value)? loading,
    TResult Function(ProductDetailsDone<T> value)? done,
    TResult Function(ProductDetailsError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductDetailsError<T> implements ProductDetailsState<T> {
  const factory ProductDetailsError(final dynamic error) =
      _$ProductDetailsErrorImpl<T>;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$ProductDetailsErrorImplCopyWith<T, _$ProductDetailsErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
