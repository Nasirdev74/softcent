import 'package:Softcent/model/model.dart' as m;
import 'package:Softcent/ui/component/component.dart';
import 'package:Softcent/ui/dimension/dimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Restaurants extends StatelessWidget {
  const Restaurants({Key? key, required this.restaurants}) : super(key: key);
  final List<m.Restaurant> restaurants;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.w,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(
          left: Dimension.padding.w,
          right: Dimension.padding.w,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: restaurants.length,
        itemBuilder: (_, __) => BuildRestaurant(restaurant: restaurants[__]),
      ),
    );
  }
}
