import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/const/colors.dart';
import 'package:ecommerce/core/const/styles.dart';
import 'package:ecommerce/core/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCard extends StatelessWidget {
  final int id;
  final String title;
  const CategoryCard({super.key, required this.title, required this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(ProductsRoute(categoryId: 1)),
      child: Padding(
        padding: EdgeInsets.only(bottom: 15.h),
        child: Container(
          width: double.infinity,
          height: 140.h,
          decoration: BoxDecoration(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: const [
              BoxShadow(
                color: AppColors.shadowColor,
                blurRadius: 8,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Row(
              children: [
                Text(
                  title,
                  style: AppStyles.medium.copyWith(
                    fontSize: 20.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
