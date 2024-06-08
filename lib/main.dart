import 'package:ecommerce/core/api/end_points.dart';
import 'package:ecommerce/features/auth/cubit/auth_cubit.dart';
import 'package:ecommerce/features/categories/cubit/categories_cubit.dart';
import 'package:ecommerce/features/products/cubit/product_details_cubit.dart';
import 'package:ecommerce/features/products/cubit/products_cubit.dart';
import 'package:ecommerce/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '/cache/cache_helper.dart';
import 'core/router/app_router.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  CacheHelper().saveData(key: Apikeys.email, value: 'bishr@gmail.com');
  CacheHelper().saveData(key: Apikeys.password, value: '12345678');
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (context) => injector(),
        ),
        BlocProvider<CategoriesCubit>(
          create: (context) => injector(),
        ),
        BlocProvider<ProductsCubit>(
          create: (context) => injector(),
        ),
        BlocProvider<ProductDetailsCubit>(
          create: (context) => injector(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 760),
        builder: (_, child) => MaterialApp.router(
          routerConfig: appRouter.config(),
          theme: ThemeData(useMaterial3: false).copyWith(
            pageTransitionsTheme: const PageTransitionsTheme(
              builders: <TargetPlatform, PageTransitionsBuilder>{
                TargetPlatform.android: ZoomPageTransitionsBuilder(),
              },
            ),
          ),
          locale: const Locale('en'),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
