import 'package:Softcent/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CashBack extends StatelessWidget {
  const CashBack({Key? key, required this.cashback}) : super(key: key);
  final int cashback;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: cashback > 0,
      child: Padding(
        padding: EdgeInsets.all(6.w),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 9.w,
            vertical: 3.5.w,
          ),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: RichText(
            text: TextSpan(
              style: GoogleFonts.dmSans(
                fontSize: 10.sp,
                color: AppColors.highlightedTextColor,
                fontWeight: FontWeight.w700,
              ),
              children: [
                TextSpan(
                  text: '$cashback% ',
                  style: TextStyle(
                    fontSize: 11.sp,
                  ),
                ),
                const TextSpan(
                  text: 'Cashback',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
