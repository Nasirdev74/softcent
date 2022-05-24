import 'package:Softcent/controller/controller.dart';
import 'package:Softcent/ui/component/component.dart';
import 'package:Softcent/ui/dimension/dimension.dart';
import 'package:Softcent/ui/view/restaurant/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RestaurantView extends StatelessWidget {
  const RestaurantView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GetBuilder<RestaurantController>(
        assignId: true,
        autoRemove: false,
        builder: (_) {
          return ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.only(bottom: 100.w),
            children: [
              RestaurantImage(URL: _.restaurant.image),
              SizedBox(height: 20.w),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(
                  left: Dimension.padding.w,
                  right: Dimension.padding.w,
                ),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RestaurantName(restaurantName: _.restaurant.businessname),
                      const RestaurantRating(rating: 4.63),
                    ],
                  ),
                  SizedBox(height: 7.w),
                  const RestaurantCashBack(cashback: 20),
                  SizedBox(height: 16.w),
                  const RestaurantDescription(),
                  SizedBox(height: 34.w),
                  const EntireMenuCashBack(),
                  const PromoCode(),
                  SizedBox(height: 27.w),
                  const InviteFriendsTitle(),
                  SizedBox(height: 15.w),
                ],
              ),
              const Products(),
            ],
          );
        },
      ),
    );
  }
}
