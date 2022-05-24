import 'package:Softcent/ui/shared/shared.dart';
import 'package:Softcent/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantCashBack extends StatelessWidget {
  const RestaurantCashBack({Key? key, required this.cashback}) : super(key: key);
  final int cashback;

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width - 30.w;
    return MagicText(
      '20% Cashback offers',
      maxWidth: w,
      style: GoogleFonts.dmSans(
        color: AppColors.textGrey,
        fontSize: 15.5.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
