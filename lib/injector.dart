import 'package:dio/dio.dart';
import 'package:ecommerce/cache/cache_helper.dart';
import 'package:ecommerce/core/api/dio_consumer.dart';
import 'package:ecommerce/core/resources/data_repo_impl.dart';
import 'package:ecommerce/features/auth/cubit/auth_cubit.dart';
import 'package:ecommerce/features/auth/data/repo/auth_repo.dart';
import 'package:ecommerce/features/auth/data/repo/auth_repo_impl.dart';
import 'package:ecommerce/features/categories/cubit/categories_cubit.dart';
import 'package:ecommerce/features/categories/data/repo/category_repo.dart';
import 'package:ecommerce/features/categories/data/repo/category_repo_impl.dart';
import 'package:ecommerce/features/products/cubit/product_details_cubit.dart';
import 'package:ecommerce/features/products/cubit/products_cubit.dart';
import 'package:ecommerce/features/products/data/repo/product_repo.dart';
import 'package:ecommerce/features/products/data/repo/product_repo_impl.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.asNewInstance();

Future<void> initDependencies() async {
  await CacheHelper().init();
  injector.registerSingleton<Dio>(Dio());
  injector.registerSingleton<DioConsumer>(DioConsumer(
    dio: injector(),
  ));
  injector.registerSingleton<CacheHelper>(CacheHelper());
  injector.registerSingleton<DataRepoImpl>(DataRepoImpl());

  //Auth
  injector.registerSingleton<AuthRepo>(AuthRepoImpl(
      dioConsumer: injector(),
      dataRepoImpl: injector(),
      cacheHelper: injector()));
  injector.registerFactory<AuthCubit>(() => AuthCubit(injector()));

  //Categories
  injector.registerSingleton<CategoryRepo>(CategoryRepoImpl(
    dioConsumer: injector(),
    dataRepoImpl: injector(),
  ));
  injector.registerFactory<CategoriesCubit>(() => CategoriesCubit(injector()));

  //Products
  injector.registerSingleton<ProductRepo>(ProductRepoImpl(
    dioConsumer: injector(),
    dataRepoImpl: injector(),
  ));
  injector.registerFactory<ProductsCubit>(() => ProductsCubit(injector()));
  injector.registerFactory<ProductDetailsCubit>(
      () => ProductDetailsCubit(injector()));
}
