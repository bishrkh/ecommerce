import 'package:ecommerce/core/const/colors.dart';
import 'package:ecommerce/core/const/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final double width;
  final double height;
  const CustomButton(
      {super.key,
      required this.onPress,
      required this.title,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.black,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Text(
          title,
          style:
              AppStyles.bold.copyWith(fontSize: 13.sp, color: AppColors.white),
        ),
      ),
    );
  }
}
