import 'package:ecommerce/core/const/colors.dart';
import 'package:flutter/material.dart';

class CustomSafeArea extends StatelessWidget {
  final Widget child;
  const CustomSafeArea({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: SafeArea(
        child: child,
      ),
    );
  }
}
