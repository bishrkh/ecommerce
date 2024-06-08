import 'package:auto_route/auto_route.dart';
import 'package:ecommerce/core/const/colors.dart';
import 'package:ecommerce/core/const/styles.dart';
import 'package:ecommerce/features/categories/cubit/categories_cubit.dart';
import 'package:ecommerce/features/categories/cubit/categories_state.dart';
import 'package:ecommerce/features/categories/widgets/category_card.dart';
import 'package:ecommerce/features/categories/widgets/custom_app_bar.dart';
import 'package:ecommerce/generated/l10n.dart';
import 'package:ecommerce/shared/widgets/circular_loading.dart';
import 'package:ecommerce/shared/widgets/custom_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

@RoutePage()
class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  Future<void> getCategories() async {
    await BlocProvider.of<CategoriesCubit>(context).getCategories();
  }

  @override
  void initState() {
    super.initState();
    getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return CustomSafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: CustomAppBar(
          title: S.of(context).categories,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: BlocBuilder<CategoriesCubit, CategoriesState>(
            builder: (context, state) {
              if (state is CategoriesEmpty) {
                return Center(
                  child: Text(
                    'No data found',
                    style: AppStyles.bold.copyWith(fontSize: 20.sp),
                  ),
                );
              }
              if (state is CategoriesError) {
                return Center(
                  child: Text(
                    state.error.message,
                    style: AppStyles.bold.copyWith(fontSize: 20.sp),
                  ),
                );
              }
              if (state is CategoriesDone) {
                return AnimationLimiter(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: state.data.categories.length,
                    itemBuilder: (context, index) {
                      String category = state.data.categories[index];
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        child: SlideAnimation(
                          duration: const Duration(milliseconds: 500),
                          child: CategoryCard(
                            id: index,
                            title: category,
                          ),
                        ),
                      );
                    },
                  ),
                );
              }
              return const Center(child: CircularLoading());
            },
          ),
        ),
      ),
    );
  }
}
