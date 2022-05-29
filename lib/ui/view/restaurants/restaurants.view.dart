import 'package:Softcent/controller/controller.dart';
import 'package:Softcent/ui/shared/shared.dart';
import 'package:Softcent/ui/theme/app_colors.dart';
import 'package:Softcent/ui/view/restaurants/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RestaurantsView extends StatelessWidget {
  const RestaurantsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            GetBuilder<RestaurantsController>(
              assignId: true,
              builder: (_) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: RefreshIndicator(
                    onRefresh: () async => await _.onRefresh(),
                    displacement: 250.h,
                    backgroundColor: AppColors.primary,
                    color: AppColors.white,
                    child: ListView(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.only(top: 58.h, bottom: 100.h),
                      children: [
                        CategoryWiseRestaurants(
                          title: 'Discount on the all food',
                          isLoading: _.isLoading,
                          restaurants: _.restaurants,
                        ),
                        CategoryWiseRestaurants(
                          title: 'Exclusive cashback offer',
                          isLoading: _.isLoading,
                          restaurants: _.restaurants,
                          showGiftBox: false,
                        ),
                        CategoryWiseRestaurants(
                          title: 'Discount on some selected items',
                          isLoading: _.isLoading,
                          restaurants: _.restaurants,
                        ),
                        CategoryWiseRestaurants(
                          title: 'Discount on the all food',
                          isLoading: _.isLoading,
                          restaurants: _.restaurants,
                        ),
                        CategoryWiseRestaurants(
                          title: 'Exclusive cashback offer',
                          isLoading: _.isLoading,
                          restaurants: _.restaurants,
                          showGiftBox: false,
                        ),
                        CategoryWiseRestaurants(
                          title: 'Discount on some selected items',
                          isLoading: _.isLoading,
                          restaurants: _.restaurants,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            DefaultAppBar(
              height: 58.h,
              title: 'Offers',
              showShadow: false,
            ),
          ],
        ),
      ),
    );
  }
}
