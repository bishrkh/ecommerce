import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

/// App router manager
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  static const String signInScreen = '/';
  static const String categoriesScreen = '/categoriesScreen';
  static const String productsScreen = '/productsScreen';
  static const String productsDetailsScreen = '/productsDetailsScreen';

  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: SignInRoute.page, path: signInScreen),
        AutoRoute(page: CategoriesRoute.page, path: categoriesScreen),
        AutoRoute(page: ProductsRoute.page, path: productsScreen),
        AutoRoute(page: ProductDetailsRoute.page, path: productsDetailsScreen),
      ];
}
