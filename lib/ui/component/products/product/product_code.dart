import 'package:Softcent/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCode extends StatelessWidget {
  const ProductCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22.w,
      width: 130.w,
      padding: EdgeInsets.only(
        top: 2.w,
        bottom: 2.w,
        left: 6.w,
        right: 6.w,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFEFEFEF),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'PTB62',
            style: GoogleFonts.dmSans(
              color: AppColors.textGrey,
              fontSize: 10.sp,
            ),
          ),
          SvgPicture.asset(
            'assets/icons/copy_icon.svg',
          ),
        ],
      ),
    );
  }
}
