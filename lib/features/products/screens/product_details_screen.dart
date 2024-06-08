import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/const/colors.dart';
import 'package:ecommerce/core/const/styles.dart';
import 'package:ecommerce/features/products/cubit/product_details_cubit.dart';
import 'package:ecommerce/features/products/cubit/product_details_state.dart';
import 'package:ecommerce/features/products/data/models/product.dart';
import 'package:ecommerce/shared/widgets/circular_loading.dart';
import 'package:ecommerce/shared/widgets/custom_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ProductDetailsScreen extends StatefulWidget {
  final int productId;
  const ProductDetailsScreen({super.key, required this.productId});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  Future<void> getProductDetails() async {
    await BlocProvider.of<ProductDetailsCubit>(context)
        .getProductDetails(id: widget.productId);
  }

  @override
  void initState() {
    super.initState();
    getProductDetails();
  }

  @override
  Widget build(BuildContext context) {
    return CustomSafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
          builder: (context, state) {
            if (state is ProductDetailsError) {
              return Center(
                child: Text(
                  state.error.message,
                  style: AppStyles.bold.copyWith(fontSize: 20.sp),
                ),
              );
            }
            if (state is ProductDetailsDone) {
              Product product = state.data;
              return SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 12.h),
                      child: Image(
                        width: double.infinity,
                        height: 400.h,
                        image: NetworkImage(
                          product.image,
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: double.infinity,
                          height: 300.h,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: AppColors.shadowColor,
                                blurRadius: 8,
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.r),
                              topRight: Radius.circular(30.r),
                            ),
                            color: AppColors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 22.h),
                            child: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.title,
                                    style: AppStyles.bold
                                        .copyWith(fontSize: 15.sp),
                                  ),
                                  4.verticalSpace,
                                  Text(
                                    product.price.toString(),
                                    style: AppStyles.light
                                        .copyWith(fontSize: 12.sp),
                                  ),
                                  2.verticalSpace,
                                  Text(
                                    product.category,
                                    style: AppStyles.light
                                        .copyWith(fontSize: 12.sp),
                                  ),
                                  2.verticalSpace,
                                  Text(
                                    product.description,
                                    style: AppStyles.lightItalic
                                        .copyWith(fontSize: 12.sp),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      left: 20.w,
                      top: 15.h,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                          onTap: () => context.router.pop(),
                          child: Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.mainColor),
                            child: Icon(
                              Icons.arrow_back,
                              size: 20.w,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }
            return const Center(child: CircularLoading());
          },
        ),
      ),
    );
  }
}
