import 'package:Softcent/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 56.w),
      height: 46.w,
      width: 46.w,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: SvgPicture.asset(
          'assets/icons/scan_icon.svg',
        ),
      ),
    );
  }
}
