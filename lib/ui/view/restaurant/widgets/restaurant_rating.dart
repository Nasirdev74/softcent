import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RestaurantRating extends StatelessWidget {
  const RestaurantRating({Key? key, required this.rating}) : super(key: key);
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 13.w,
          width: 13.w,
          child: SvgPicture.asset(
            'assets/icons/star_icon.svg',
          ),
        ),
        SizedBox(width: 4.w),
        Text(
          rating.toStringAsFixed(1),
          style: TextStyle(
            fontSize: 18.sp,
          ),
        ),
      ],
    );
  }
}
