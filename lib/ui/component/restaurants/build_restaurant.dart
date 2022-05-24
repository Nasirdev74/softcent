import 'package:Softcent/model/model.dart' as m;
import 'package:Softcent/routes/app_pages.dart';
import 'package:Softcent/ui/component/restaurants/restaurant/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BuildRestaurant extends StatelessWidget {
  const BuildRestaurant({Key? key, required this.restaurant}) : super(key: key);
  final m.Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w),
      child: InkWell(
        onTap: () => Get.toNamed(AppRoutes.RESTAURANT, arguments: restaurant),
        child: Restaurant(restaurant: restaurant),
      ),
    );
  }
}
