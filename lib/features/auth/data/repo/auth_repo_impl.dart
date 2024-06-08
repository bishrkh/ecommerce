// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ecommerce/cache/cache_helper.dart';
import 'package:ecommerce/core/api/dio_consumer.dart';
import 'package:ecommerce/core/api/end_points.dart';
import 'package:ecommerce/core/resources/data_repo_impl.dart';
import 'package:ecommerce/core/resources/data_state.dart';
import 'package:ecommerce/features/auth/data/models/user_model.dart';
import 'package:ecommerce/features/auth/data/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  DioConsumer dioConsumer;
  DataRepoImpl dataRepoImpl;
  CacheHelper cacheHelper;
  AuthRepoImpl({
    required this.dioConsumer,
    required this.dataRepoImpl,
    required this.cacheHelper,
  });
  @override
  Future<DataState<User>> logIn({required User userModel}) async {
    final String email = await cacheHelper.getData(
      key: Apikeys.email,
    );
    final String password = await cacheHelper.getData(
      key: Apikeys.password,
    );
    Response response;
    if (userModel.email == email && userModel.password == password) {
      response =
          Response(requestOptions: RequestOptions(), data: jsonDecode('''{
      "email": "$email",
      "password": "$password"
    }'''), statusCode: 200);
    } else {
      response =
          Response(requestOptions: RequestOptions(), data: jsonDecode('''{
      "message": "Something went wrong"
    }'''), statusCode: 401);
    }

    return dataRepoImpl.dataRepoRequest(
        response: response, fromJson: User.fromJson);
  }
}
