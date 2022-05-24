import 'package:Softcent/ui/component/products/product/widgets.dart';
import 'package:Softcent/ui/shared/shared.dart';
import 'package:Softcent/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.w,
      width: 130.w,
      padding: EdgeInsets.only(
        top: 6.w,
        left: 10.w,
        right: 10.w,
        bottom: 8.w,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MagicText(
            'Superstore',
            maxWidth: 130.w,
            style: headline2.copyWith(
              fontSize: 13.5.sp,
            ),
          ),
          SizedBox(height: 3.w),
          MagicText(
            '20% Cashback offers',
            maxWidth: 130.w,
            style: headline3.copyWith(
              fontSize: 9.5.sp,
            ),
          ),
          const Spacer(),
          const ProductCode(),
        ],
      ),
    );
  }
}
