import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_state.freezed.dart';

@freezed
class AuthState<T> with _$AuthState<T> {
  const factory AuthState.empty() = AuthEmpty<T>;
  const factory AuthState.loading() = AuthLoading<T>;
  const factory AuthState.done(T data) = AuthDone<T>;
  const factory AuthState.error(dynamic error) = AuthError<T>;
}
