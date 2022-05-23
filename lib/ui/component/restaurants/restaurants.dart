import 'package:Softcent/ui/component/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Restaurants extends StatelessWidget {
  const Restaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(),
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (_, __) => const BuildRestaurant(),
      ),
    );
  }
}
