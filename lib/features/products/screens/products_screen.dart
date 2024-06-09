import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/const/colors.dart';
import 'package:ecommerce/core/const/styles.dart';
import 'package:ecommerce/features/auth/widgets/custom_text_field.dart';
import 'package:ecommerce/features/categories/widgets/custom_app_bar.dart';
import 'package:ecommerce/features/products/cubit/products_cubit.dart';
import 'package:ecommerce/features/products/cubit/products_state.dart';
import 'package:ecommerce/features/products/data/models/product.dart';
import 'package:ecommerce/features/products/widgets/product_card.dart';
import 'package:ecommerce/generated/l10n.dart';
import 'package:ecommerce/shared/widgets/circular_loading.dart';
import 'package:ecommerce/shared/widgets/custom_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

@RoutePage()
class ProductsScreen extends StatefulWidget {
  final int categoryId;
  const ProductsScreen({super.key, required this.categoryId});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  Future<void> getProducts() async {
    await BlocProvider.of<ProductsCubit>(context).getProducts();
  }

  @override
  void initState() {
    super.initState();
    getProducts();
  }

  Widget getProductsList(List<Product> products) {
    double minRate = _values.start;
    double maxRate = _values.end;
    List<Product> filterProducts = [];
    for (int i=0;i<products.length ;i++){
      if (products[i].rate.rate >= minRate && products[i].rate.rate <= maxRate){
        filterProducts.add(products[i]);
      }
    }
    if (filterProducts.isEmpty){
      return Center(child: Text('No data found',
        style: AppStyles.bold.copyWith(fontSize: 20.sp,),
      ),);
    }else {
      return AnimationLimiter(
      child: StaggeredGridView.countBuilder(
        physics: const BouncingScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        itemCount: filterProducts.length,
        itemBuilder: (context, index) {

            Product product = filterProducts[index];
            return AnimationConfiguration.staggeredList(
              position: index,
              child: SlideAnimation(
                duration: const Duration(milliseconds: 500),
                child: ProductCard(
                  id: product.id,
                  name: product.title,
                  description: product.description,
                  price: product.price,
                  image: product.image,
                  rate: product.rate.rate,
                ),
              ),
            );

        },
        staggeredTileBuilder: (index) {
          return StaggeredTile.count(1, index.isEven ? 1.9 : 2.2);
        },
      ),
    );
    }
  }

  SfRangeValues _values = const SfRangeValues(0.0, 5.0);

  @override
  Widget build(BuildContext context) {
    return CustomSafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: S.of(context).products,
        ),
        backgroundColor: AppColors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SizedBox(
                width: 150.w,
                child: Text(
                  S.of(context).mostPopular,
                  style: AppStyles.extraBold.copyWith(fontSize: 15.sp),
                  maxLines: 2,
                ),
              ),
            ),
            10.verticalSpace,
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: CustomTextField(
                  icon: Icons.search,
                  hintText: S.of(context).search,
                  isPassword: false,
                  isEmail: false,
                  onChange: (String value) {
                  },
                  width: double.infinity,
                ),
              ),
            ),
            18.verticalSpace,
            Expanded(
              child: BlocBuilder<ProductsCubit, ProductsState>(
                builder: (context, state) {
                  if (state is ProductsEmpty) {
                    return Center(
                      child: Text(
                        'No data found',
                        style: AppStyles.bold.copyWith(fontSize: 20.sp),
                      ),
                    );
                  }
                  if (state is ProductsError) {
                    return Center(
                      child: Text(
                        state.error.message,
                        style: AppStyles.bold.copyWith(fontSize: 20.sp),
                      ),
                    );
                  }
                  if (state is ProductsDone) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Text(
                            S.of(context).rateFilter,
                            style: AppStyles.bold.copyWith(fontSize: 15.sp),
                          ),
                        ),
                        SfRangeSlider(
                          min: 0.0,
                          max: 5,
                          activeColor: AppColors.mainColor,
                          values: _values,
                          interval: 1,
                          showTicks: true,
                          showLabels: true,
                          enableTooltip: true,
                          minorTicksPerInterval: 1,
                          onChanged: (SfRangeValues values) {
                            setState(() {
                              _values = values;
                            });
                          },
                        ),
                        5.verticalSpace,
                        Expanded(child: getProductsList(state.data.products)),
                      ],
                    );
                  }
                  return const Center(child: CircularLoading());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
