import 'package:Softcent/controller/controller.dart';
import 'package:Softcent/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationIcon extends StatelessWidget {
  const NavigationIcon({
    Key? key,
    required this.index,
    required this.currentIndex,
    required this.iconPath,
    required this.label,
  }) : super(key: key);

  final int index;
  final int currentIndex;
  final String iconPath;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.find<DashboardController>()
          .swiperController
          .move(index, animation: true),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          iconPath.endsWith('svg')
              ? SvgPicture.asset(
                  iconPath,
                  color: index == currentIndex
                      ? AppColors.primary
                      : AppColors.iconColor,
                  height: 18.w,
                  width: 18.w,
                )
              : Image.asset(
                  iconPath,
                  color: index == currentIndex
                      ? AppColors.primary
                      : AppColors.iconColor,
                  height: 18.w,
                  width: 18.w,
                ),
          SizedBox(height: 2.w),
          Text(
            label,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: index == currentIndex
                  ? AppColors.primary
                  : AppColors.iconColor,
              fontSize: 9.5.sp,
            ),
          ),
          SizedBox(height: 5.w),
        ],
      ),
    );
  }
}
