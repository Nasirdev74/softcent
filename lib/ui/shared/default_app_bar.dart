import 'package:Softcent/ui/theme/app_colors.dart';
import 'package:Softcent/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar({
    Key? key,
    required this.height,
    required this.title,
    this.showBackButton = true,
    this.showShadow = false,
  }) : super(key: key);

  final double height;
  final String title;
  final bool showBackButton;
  final bool showShadow;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Positioned(
      top: 0,
      child: Container(
        height: height,
        width: size.width,
        color: AppColors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                showBackButton
                    ? InkWell(
                        onTap: () => Get.back(),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 20.w,
                            right: 20.w,
                            top: 14.w,
                            bottom: 14.w,
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/arrow_back.svg',
                            height: 14.h,
                            width: 14.h,
                          ),
                        ),
                      )
                    : SizedBox(width: 54.w),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                    top: 12.w,
                    bottom: 12.w,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/search_icon.svg',
                    height: 16.h,
                    width: 16.h,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: headline1.copyWith(fontSize: 18.sp),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
