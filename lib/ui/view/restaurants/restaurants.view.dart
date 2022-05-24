import 'package:Softcent/controller/controller.dart';
import 'package:Softcent/ui/shared/shared.dart';
import 'package:Softcent/ui/theme/app_colors.dart';
import 'package:Softcent/ui/theme/app_text_theme.dart';
import 'package:Softcent/ui/view/restaurants/widgets/widgets.dart';
import 'package:Softcent/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RestaurantsView extends StatelessWidget {
  const RestaurantsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final value = await showDialog<bool>(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: AppColors.white,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/icons/softcent_logo.png',
                      height: 40.w,
                      width: 40.w,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      AppConstant.appName,
                      style: headline1,
                    )
                  ],
                ),
                content: Text(
                  'Are you sure you want to exit?',
                  style: headline2,
                ),
                actions: <Widget>[
                  TextButton(
                    child: const Text(
                      'No',
                      style: TextStyle(
                        color: AppColors.textColor,
                      ),
                    ),
                    onPressed: () => Navigator.of(context).pop(false),
                  ),
                  SizedBox(width: 20.w),
                  TextButton(
                    child: const Text(
                      'Yes, exit',
                      style: TextStyle(
                        color: AppColors.textColor,
                      ),
                    ),
                    onPressed: () => Navigator.of(context).pop(true),
                  ),
                ],
              );
            });
        return value == true;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Stack(
            children: [
              GetBuilder<RestaurantsController>(
                assignId: true,
                builder: (_) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.only(top: 58.h, bottom: 100.h),
                      children: [
                        CategoryWiseRestaurants(
                          title: 'Discount on the all food',
                          restaurants: _.restaurants,
                        ),
                        CategoryWiseRestaurants(
                          title: 'Exclusive cashback offer',
                          restaurants: _.restaurants,
                          showGiftBox: false,
                        ),
                        CategoryWiseRestaurants(
                          title: 'Discount on some selected items',
                          restaurants: _.restaurants,
                        ),
                        CategoryWiseRestaurants(
                          title: 'Discount on the all food',
                          restaurants: _.restaurants,
                        ),
                        CategoryWiseRestaurants(
                          title: 'Exclusive cashback offer',
                          restaurants: _.restaurants,
                          showGiftBox: false,
                        ),
                        CategoryWiseRestaurants(
                          title: 'Discount on some selected items',
                          restaurants: _.restaurants,
                        ),
                      ],
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
      ),
    );
  }
}
