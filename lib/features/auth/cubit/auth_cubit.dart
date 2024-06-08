import 'package:ecommerce/core/resources/data_state.dart';
import 'package:ecommerce/features/auth/cubit/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ecommerce/features/auth/data/models/user_model.dart';
import 'package:ecommerce/features/auth/data/repo/auth_repo.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo _authRepo;

  AuthCubit(this._authRepo) : super(const AuthState.empty());

  Future<void> signIn({required User userModel}) async {
    emit(const AuthState.loading());
    await Future.delayed(const Duration(seconds: 2));
    final dataState = await _authRepo.logIn(userModel: userModel);
    if (dataState is DataSuccess) {
      emit(AuthState.done(dataState.data!));
    }
    if (dataState is DataFailed) {
      emit(AuthState.error(dataState.error!));
    }
  }
}
