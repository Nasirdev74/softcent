import 'package:Softcent/ui/shared/shared.dart';
import 'package:Softcent/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantLocation extends StatelessWidget {
  const RestaurantLocation({
    Key? key,
    required this.location,
  }) : super(key: key);

  final String location;

  @override
  Widget build(BuildContext context) {
    return MagicText(
      location,
      maxWidth: 190.w,
      style: headline3,
    );
  }
}
