import 'package:Softcent/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GiftBox extends StatelessWidget {
  const GiftBox({Key? key, this.showGiftBox = false}) : super(key: key);
  final bool showGiftBox;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: showGiftBox,
      child: Container(
        margin: EdgeInsets.only(left: 2.w),
        padding: EdgeInsets.all(4.w),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: SvgPicture.asset(
          'assets/icons/closed_gift_box.svg',
          height: 12.w,
        ),
      ),
    );
  }
}
