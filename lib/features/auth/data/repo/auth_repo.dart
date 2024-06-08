import 'package:ecommerce/core/resources/data_state.dart';
import 'package:ecommerce/features/auth/data/models/user_model.dart';

abstract class AuthRepo {
  Future<DataState<User>> logIn({required User userModel});
}
