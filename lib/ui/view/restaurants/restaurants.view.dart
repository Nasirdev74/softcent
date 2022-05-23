import 'package:Softcent/ui/dimension/dimension.dart';
import 'package:Softcent/ui/shared/shared.dart';
import 'package:Softcent/ui/view/restaurants/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantsView extends StatelessWidget {
  const RestaurantsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.only(top: 58.h, left: Dimension.padding.w),
              children: const [
                CategoryWiseRestaurants(title: 'Discount on the all food'),
                CategoryWiseRestaurants(title: 'Exclusive cashback offer', showGiftBox: false),
                CategoryWiseRestaurants(title: 'Discount on some selected items'),
              ],
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
