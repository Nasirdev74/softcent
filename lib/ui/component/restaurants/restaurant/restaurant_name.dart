import 'package:Softcent/ui/shared/shared.dart';
import 'package:Softcent/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RestaurantName extends StatelessWidget {
  const RestaurantName({
    Key? key,
    required this.restaurantName,
  }) : super(key: key);

  final String restaurantName;

  @override
  Widget build(BuildContext context) {
    return MagicText(
      restaurantName.capitalizeFirst.toString(),
      maxWidth: 155.w,
      maxLines: 1,
      style: headline2,
    );
  }
}
