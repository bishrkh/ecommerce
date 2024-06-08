import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/const/colors.dart';
import 'package:ecommerce/core/const/styles.dart';
import 'package:ecommerce/core/router/app_router.dart';
import 'package:ecommerce/features/auth/cubit/auth_cubit.dart';
import 'package:ecommerce/features/auth/cubit/auth_state.dart';
import 'package:ecommerce/features/auth/data/models/user_model.dart';
import 'package:ecommerce/features/auth/widgets/custom_button.dart';
import 'package:ecommerce/features/auth/widgets/custom_text_field.dart';
import 'package:ecommerce/generated/l10n.dart';
import 'package:ecommerce/shared/functions/loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

@RoutePage()
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacity;
  late Animation<double> _transform;
  String? email;
  String? password;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _opacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.ease,
      ),
    )..addListener(() {
        setState(() {});
      });

    _transform = Tween<double>(begin: 2, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.fastLinearToSlowEaseIn,
      ),
    );

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> logIn() async {
    FocusManager.instance.primaryFocus?.unfocus();
    await BlocProvider.of<AuthCubit>(context)
        .signIn(userModel: User(email: email!, password: password!));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthDone) {
          stopDialog(context);
          Fluttertoast.showToast(
            msg: 'Done',
          );
          context.router.pushNamed(AppRouter.categoriesScreen);
        }
        if (state is AuthError) {
          stopDialog(context);
          Fluttertoast.showToast(
            msg: state.error.message,
          );
        }
        if (state is AuthLoading) {
          loadingDialog(context);
        }
      },
      child: Scaffold(
        body: ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
            child: SizedBox(
              height: size.height,
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColors.secColor,
                      AppColors.mainColor,
                    ],
                  ),
                ),
                child: Opacity(
                  opacity: _opacity.value,
                  child: Transform.scale(
                    scale: _transform.value,
                    child: Container(
                      width: 330.w,
                      height: 450.h,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: const [
                          BoxShadow(
                            color: AppColors.shadowColor,
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(),
                          Text(
                            S.of(context).signIn,
                            style: AppStyles.bold.copyWith(fontSize: 22.sp),
                          ),
                          const SizedBox(),
                          CustomTextField(
                            icon: Icons.email_outlined,
                            hintText: S.of(context).email,
                            isPassword: false,
                            isEmail: true,
                            onChange: (String value) {
                              setState(() {
                                email = value;
                              });
                            },
                            width: 300.w,
                          ),
                          CustomTextField(
                            icon: Icons.lock_outline,
                            hintText: S.of(context).password,
                            isPassword: true,
                            isEmail: false,
                            onChange: (String value) {
                              setState(() {
                                password = value;
                              });
                            },
                            width: 300.w,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomButton(
                                title: S.of(context).login,
                                width: 130.w,
                                height: 50.h,
                                onPress: () {
                                  logIn();
                                },
                              ),
                              SizedBox(width: 10.w),
                              Container(
                                width: 130.w,
                                alignment: Alignment.center,
                                child: Text(
                                  S.of(context).forgetPassword,
                                  style: AppStyles.bold.copyWith(
                                      fontSize: 10.sp, color: AppColors.black),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(),
                          Text(
                            S.of(context).createAccount,
                            style: AppStyles.bold.copyWith(
                                fontSize: 12.sp, color: AppColors.black),
                          ),
                          const SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}
