// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:ecommerce/features/auth/screens/sign_in_screen.dart' as _i4;
import 'package:ecommerce/features/categories/screens/categories_screen.dart'
    as _i1;
import 'package:ecommerce/features/products/screens/product_details_screen.dart'
    as _i2;
import 'package:ecommerce/features/products/screens/products_screen.dart'
    as _i3;
import 'package:flutter/material.dart' as _i6;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    CategoriesRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CategoriesScreen(),
      );
    },
    ProductDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailsRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ProductDetailsScreen(
          key: args.key,
          productId: args.productId,
        ),
      );
    },
    ProductsRoute.name: (routeData) {
      final args = routeData.argsAs<ProductsRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.ProductsScreen(
          key: args.key,
          categoryId: args.categoryId,
        ),
      );
    },
    SignInRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SignInScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CategoriesScreen]
class CategoriesRoute extends _i5.PageRouteInfo<void> {
  const CategoriesRoute({List<_i5.PageRouteInfo>? children})
      : super(
          CategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ProductDetailsScreen]
class ProductDetailsRoute extends _i5.PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({
    _i6.Key? key,
    required int productId,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          ProductDetailsRoute.name,
          args: ProductDetailsRouteArgs(
            key: key,
            productId: productId,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailsRoute';

  static const _i5.PageInfo<ProductDetailsRouteArgs> page =
      _i5.PageInfo<ProductDetailsRouteArgs>(name);
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({
    this.key,
    required this.productId,
  });

  final _i6.Key? key;

  final int productId;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i3.ProductsScreen]
class ProductsRoute extends _i5.PageRouteInfo<ProductsRouteArgs> {
  ProductsRoute({
    _i6.Key? key,
    required int categoryId,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          ProductsRoute.name,
          args: ProductsRouteArgs(
            key: key,
            categoryId: categoryId,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductsRoute';

  static const _i5.PageInfo<ProductsRouteArgs> page =
      _i5.PageInfo<ProductsRouteArgs>(name);
}

class ProductsRouteArgs {
  const ProductsRouteArgs({
    this.key,
    required this.categoryId,
  });

  final _i6.Key? key;

  final int categoryId;

  @override
  String toString() {
    return 'ProductsRouteArgs{key: $key, categoryId: $categoryId}';
  }
}

/// generated route for
/// [_i4.SignInScreen]
class SignInRoute extends _i5.PageRouteInfo<void> {
  const SignInRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
