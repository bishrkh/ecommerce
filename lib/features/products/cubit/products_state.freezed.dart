// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(T data) done,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(T data)? done,
    TResult? Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(T data)? done,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsEmpty<T> value) empty,
    required TResult Function(ProductsLoading<T> value) loading,
    required TResult Function(ProductsDone<T> value) done,
    required TResult Function(ProductsError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsEmpty<T> value)? empty,
    TResult? Function(ProductsLoading<T> value)? loading,
    TResult? Function(ProductsDone<T> value)? done,
    TResult? Function(ProductsError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsEmpty<T> value)? empty,
    TResult Function(ProductsLoading<T> value)? loading,
    TResult Function(ProductsDone<T> value)? done,
    TResult Function(ProductsError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<T, $Res> {
  factory $ProductsStateCopyWith(
          ProductsState<T> value, $Res Function(ProductsState<T>) then) =
      _$ProductsStateCopyWithImpl<T, $Res, ProductsState<T>>;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<T, $Res, $Val extends ProductsState<T>>
    implements $ProductsStateCopyWith<T, $Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductsEmptyImplCopyWith<T, $Res> {
  factory _$$ProductsEmptyImplCopyWith(_$ProductsEmptyImpl<T> value,
          $Res Function(_$ProductsEmptyImpl<T>) then) =
      __$$ProductsEmptyImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ProductsEmptyImplCopyWithImpl<T, $Res>
    extends _$ProductsStateCopyWithImpl<T, $Res, _$ProductsEmptyImpl<T>>
    implements _$$ProductsEmptyImplCopyWith<T, $Res> {
  __$$ProductsEmptyImplCopyWithImpl(_$ProductsEmptyImpl<T> _value,
      $Res Function(_$ProductsEmptyImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductsEmptyImpl<T> implements ProductsEmpty<T> {
  const _$ProductsEmptyImpl();

  @override
  String toString() {
    return 'ProductsState<$T>.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductsEmptyImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(T data) done,
    required TResult Function(dynamic error) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(T data)? done,
    TResult? Function(dynamic error)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(T data)? done,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsEmpty<T> value) empty,
    required TResult Function(ProductsLoading<T> value) loading,
    required TResult Function(ProductsDone<T> value) done,
    required TResult Function(ProductsError<T> value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsEmpty<T> value)? empty,
    TResult? Function(ProductsLoading<T> value)? loading,
    TResult? Function(ProductsDone<T> value)? done,
    TResult? Function(ProductsError<T> value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsEmpty<T> value)? empty,
    TResult Function(ProductsLoading<T> value)? loading,
    TResult Function(ProductsDone<T> value)? done,
    TResult Function(ProductsError<T> value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ProductsEmpty<T> implements ProductsState<T> {
  const factory ProductsEmpty() = _$ProductsEmptyImpl<T>;
}

/// @nodoc
abstract class _$$ProductsLoadingImplCopyWith<T, $Res> {
  factory _$$ProductsLoadingImplCopyWith(_$ProductsLoadingImpl<T> value,
          $Res Function(_$ProductsLoadingImpl<T>) then) =
      __$$ProductsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ProductsLoadingImplCopyWithImpl<T, $Res>
    extends _$ProductsStateCopyWithImpl<T, $Res, _$ProductsLoadingImpl<T>>
    implements _$$ProductsLoadingImplCopyWith<T, $Res> {
  __$$ProductsLoadingImplCopyWithImpl(_$ProductsLoadingImpl<T> _value,
      $Res Function(_$ProductsLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductsLoadingImpl<T> implements ProductsLoading<T> {
  const _$ProductsLoadingImpl();

  @override
  String toString() {
    return 'ProductsState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(T data) done,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(T data)? done,
    TResult? Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
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
    required TResult Function(ProductsEmpty<T> value) empty,
    required TResult Function(ProductsLoading<T> value) loading,
    required TResult Function(ProductsDone<T> value) done,
    required TResult Function(ProductsError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsEmpty<T> value)? empty,
    TResult? Function(ProductsLoading<T> value)? loading,
    TResult? Function(ProductsDone<T> value)? done,
    TResult? Function(ProductsError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsEmpty<T> value)? empty,
    TResult Function(ProductsLoading<T> value)? loading,
    TResult Function(ProductsDone<T> value)? done,
    TResult Function(ProductsError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductsLoading<T> implements ProductsState<T> {
  const factory ProductsLoading() = _$ProductsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ProductsDoneImplCopyWith<T, $Res> {
  factory _$$ProductsDoneImplCopyWith(_$ProductsDoneImpl<T> value,
          $Res Function(_$ProductsDoneImpl<T>) then) =
      __$$ProductsDoneImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ProductsDoneImplCopyWithImpl<T, $Res>
    extends _$ProductsStateCopyWithImpl<T, $Res, _$ProductsDoneImpl<T>>
    implements _$$ProductsDoneImplCopyWith<T, $Res> {
  __$$ProductsDoneImplCopyWithImpl(
      _$ProductsDoneImpl<T> _value, $Res Function(_$ProductsDoneImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ProductsDoneImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ProductsDoneImpl<T> implements ProductsDone<T> {
  const _$ProductsDoneImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ProductsState<$T>.done(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsDoneImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsDoneImplCopyWith<T, _$ProductsDoneImpl<T>> get copyWith =>
      __$$ProductsDoneImplCopyWithImpl<T, _$ProductsDoneImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(T data) done,
    required TResult Function(dynamic error) error,
  }) {
    return done(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(T data)? done,
    TResult? Function(dynamic error)? error,
  }) {
    return done?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
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
    required TResult Function(ProductsEmpty<T> value) empty,
    required TResult Function(ProductsLoading<T> value) loading,
    required TResult Function(ProductsDone<T> value) done,
    required TResult Function(ProductsError<T> value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsEmpty<T> value)? empty,
    TResult? Function(ProductsLoading<T> value)? loading,
    TResult? Function(ProductsDone<T> value)? done,
    TResult? Function(ProductsError<T> value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsEmpty<T> value)? empty,
    TResult Function(ProductsLoading<T> value)? loading,
    TResult Function(ProductsDone<T> value)? done,
    TResult Function(ProductsError<T> value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class ProductsDone<T> implements ProductsState<T> {
  const factory ProductsDone(final T data) = _$ProductsDoneImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$ProductsDoneImplCopyWith<T, _$ProductsDoneImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsErrorImplCopyWith<T, $Res> {
  factory _$$ProductsErrorImplCopyWith(_$ProductsErrorImpl<T> value,
          $Res Function(_$ProductsErrorImpl<T>) then) =
      __$$ProductsErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$ProductsErrorImplCopyWithImpl<T, $Res>
    extends _$ProductsStateCopyWithImpl<T, $Res, _$ProductsErrorImpl<T>>
    implements _$$ProductsErrorImplCopyWith<T, $Res> {
  __$$ProductsErrorImplCopyWithImpl(_$ProductsErrorImpl<T> _value,
      $Res Function(_$ProductsErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ProductsErrorImpl<T>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ProductsErrorImpl<T> implements ProductsError<T> {
  const _$ProductsErrorImpl(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'ProductsState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsErrorImpl<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsErrorImplCopyWith<T, _$ProductsErrorImpl<T>> get copyWith =>
      __$$ProductsErrorImplCopyWithImpl<T, _$ProductsErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(T data) done,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(T data)? done,
    TResult? Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
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
    required TResult Function(ProductsEmpty<T> value) empty,
    required TResult Function(ProductsLoading<T> value) loading,
    required TResult Function(ProductsDone<T> value) done,
    required TResult Function(ProductsError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsEmpty<T> value)? empty,
    TResult? Function(ProductsLoading<T> value)? loading,
    TResult? Function(ProductsDone<T> value)? done,
    TResult? Function(ProductsError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsEmpty<T> value)? empty,
    TResult Function(ProductsLoading<T> value)? loading,
    TResult Function(ProductsDone<T> value)? done,
    TResult Function(ProductsError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductsError<T> implements ProductsState<T> {
  const factory ProductsError(final dynamic error) = _$ProductsErrorImpl<T>;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$ProductsErrorImplCopyWith<T, _$ProductsErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
