import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/const/colors.dart';
import 'package:ecommerce/core/const/styles.dart';
import 'package:ecommerce/core/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  final int id;
  final String name;
  final String description;
  final double price;
  final String image;
  final double rate;
  const ProductCard(
      {super.key,
      required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.image,
      required this.rate});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(ProductDetailsRoute(productId: id)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 3,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.shadowColor,
                          blurRadius: 8,
                        ),
                      ],
                      image: DecorationImage(
                        image: NetworkImage(
                          image,
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    right: 5.w,
                    top: 5.h,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.mainColor,
                        ),
                        child: Center(
                          child: Text(
                            rate.toString(),
                            style: AppStyles.medium.copyWith(
                              fontSize: 13.sp,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  1.verticalSpace,
                  Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.bold.copyWith(fontSize: 14.sp),
                  ),
                  1.5.verticalSpace,
                  Text(
                    description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: AppStyles.medium.copyWith(fontSize: 14.sp),
                  ),
                  1.5.verticalSpace,
                  Text(
                    price.toString(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.medium.copyWith(fontSize: 14.sp),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
