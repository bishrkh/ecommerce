// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState<T> {
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
    required TResult Function(AuthEmpty<T> value) empty,
    required TResult Function(AuthLoading<T> value) loading,
    required TResult Function(AuthDone<T> value) done,
    required TResult Function(AuthError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEmpty<T> value)? empty,
    TResult? Function(AuthLoading<T> value)? loading,
    TResult? Function(AuthDone<T> value)? done,
    TResult? Function(AuthError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEmpty<T> value)? empty,
    TResult Function(AuthLoading<T> value)? loading,
    TResult Function(AuthDone<T> value)? done,
    TResult Function(AuthError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<T, $Res> {
  factory $AuthStateCopyWith(
          AuthState<T> value, $Res Function(AuthState<T>) then) =
      _$AuthStateCopyWithImpl<T, $Res, AuthState<T>>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<T, $Res, $Val extends AuthState<T>>
    implements $AuthStateCopyWith<T, $Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthEmptyImplCopyWith<T, $Res> {
  factory _$$AuthEmptyImplCopyWith(
          _$AuthEmptyImpl<T> value, $Res Function(_$AuthEmptyImpl<T>) then) =
      __$$AuthEmptyImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AuthEmptyImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$AuthEmptyImpl<T>>
    implements _$$AuthEmptyImplCopyWith<T, $Res> {
  __$$AuthEmptyImplCopyWithImpl(
      _$AuthEmptyImpl<T> _value, $Res Function(_$AuthEmptyImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthEmptyImpl<T> implements AuthEmpty<T> {
  const _$AuthEmptyImpl();

  @override
  String toString() {
    return 'AuthState<$T>.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthEmptyImpl<T>);
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
    required TResult Function(AuthEmpty<T> value) empty,
    required TResult Function(AuthLoading<T> value) loading,
    required TResult Function(AuthDone<T> value) done,
    required TResult Function(AuthError<T> value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEmpty<T> value)? empty,
    TResult? Function(AuthLoading<T> value)? loading,
    TResult? Function(AuthDone<T> value)? done,
    TResult? Function(AuthError<T> value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEmpty<T> value)? empty,
    TResult Function(AuthLoading<T> value)? loading,
    TResult Function(AuthDone<T> value)? done,
    TResult Function(AuthError<T> value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class AuthEmpty<T> implements AuthState<T> {
  const factory AuthEmpty() = _$AuthEmptyImpl<T>;
}

/// @nodoc
abstract class _$$AuthLoadingImplCopyWith<T, $Res> {
  factory _$$AuthLoadingImplCopyWith(_$AuthLoadingImpl<T> value,
          $Res Function(_$AuthLoadingImpl<T>) then) =
      __$$AuthLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AuthLoadingImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$AuthLoadingImpl<T>>
    implements _$$AuthLoadingImplCopyWith<T, $Res> {
  __$$AuthLoadingImplCopyWithImpl(
      _$AuthLoadingImpl<T> _value, $Res Function(_$AuthLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLoadingImpl<T> implements AuthLoading<T> {
  const _$AuthLoadingImpl();

  @override
  String toString() {
    return 'AuthState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoadingImpl<T>);
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
    required TResult Function(AuthEmpty<T> value) empty,
    required TResult Function(AuthLoading<T> value) loading,
    required TResult Function(AuthDone<T> value) done,
    required TResult Function(AuthError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEmpty<T> value)? empty,
    TResult? Function(AuthLoading<T> value)? loading,
    TResult? Function(AuthDone<T> value)? done,
    TResult? Function(AuthError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEmpty<T> value)? empty,
    TResult Function(AuthLoading<T> value)? loading,
    TResult Function(AuthDone<T> value)? done,
    TResult Function(AuthError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthLoading<T> implements AuthState<T> {
  const factory AuthLoading() = _$AuthLoadingImpl<T>;
}

/// @nodoc
abstract class _$$AuthDoneImplCopyWith<T, $Res> {
  factory _$$AuthDoneImplCopyWith(
          _$AuthDoneImpl<T> value, $Res Function(_$AuthDoneImpl<T>) then) =
      __$$AuthDoneImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$AuthDoneImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$AuthDoneImpl<T>>
    implements _$$AuthDoneImplCopyWith<T, $Res> {
  __$$AuthDoneImplCopyWithImpl(
      _$AuthDoneImpl<T> _value, $Res Function(_$AuthDoneImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AuthDoneImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AuthDoneImpl<T> implements AuthDone<T> {
  const _$AuthDoneImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'AuthState<$T>.done(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthDoneImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthDoneImplCopyWith<T, _$AuthDoneImpl<T>> get copyWith =>
      __$$AuthDoneImplCopyWithImpl<T, _$AuthDoneImpl<T>>(this, _$identity);

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
    required TResult Function(AuthEmpty<T> value) empty,
    required TResult Function(AuthLoading<T> value) loading,
    required TResult Function(AuthDone<T> value) done,
    required TResult Function(AuthError<T> value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEmpty<T> value)? empty,
    TResult? Function(AuthLoading<T> value)? loading,
    TResult? Function(AuthDone<T> value)? done,
    TResult? Function(AuthError<T> value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEmpty<T> value)? empty,
    TResult Function(AuthLoading<T> value)? loading,
    TResult Function(AuthDone<T> value)? done,
    TResult Function(AuthError<T> value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class AuthDone<T> implements AuthState<T> {
  const factory AuthDone(final T data) = _$AuthDoneImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$AuthDoneImplCopyWith<T, _$AuthDoneImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthErrorImplCopyWith<T, $Res> {
  factory _$$AuthErrorImplCopyWith(
          _$AuthErrorImpl<T> value, $Res Function(_$AuthErrorImpl<T>) then) =
      __$$AuthErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$AuthErrorImplCopyWithImpl<T, $Res>
    extends _$AuthStateCopyWithImpl<T, $Res, _$AuthErrorImpl<T>>
    implements _$$AuthErrorImplCopyWith<T, $Res> {
  __$$AuthErrorImplCopyWithImpl(
      _$AuthErrorImpl<T> _value, $Res Function(_$AuthErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$AuthErrorImpl<T>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$AuthErrorImpl<T> implements AuthError<T> {
  const _$AuthErrorImpl(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'AuthState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthErrorImpl<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthErrorImplCopyWith<T, _$AuthErrorImpl<T>> get copyWith =>
      __$$AuthErrorImplCopyWithImpl<T, _$AuthErrorImpl<T>>(this, _$identity);

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
    required TResult Function(AuthEmpty<T> value) empty,
    required TResult Function(AuthLoading<T> value) loading,
    required TResult Function(AuthDone<T> value) done,
    required TResult Function(AuthError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEmpty<T> value)? empty,
    TResult? Function(AuthLoading<T> value)? loading,
    TResult? Function(AuthDone<T> value)? done,
    TResult? Function(AuthError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEmpty<T> value)? empty,
    TResult Function(AuthLoading<T> value)? loading,
    TResult Function(AuthDone<T> value)? done,
    TResult Function(AuthError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthError<T> implements AuthState<T> {
  const factory AuthError(final dynamic error) = _$AuthErrorImpl<T>;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$AuthErrorImplCopyWith<T, _$AuthErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
