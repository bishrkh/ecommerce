import 'package:dio/dio.dart';

abstract class DataState<T>{
  DataState({this.data, this.error});

  final T? data;
  final DioError? error;
}

class DataSuccess<T> extends DataState <T>{
  DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState <T>{
  DataFailed(DioError error) : super(error: error);
}
