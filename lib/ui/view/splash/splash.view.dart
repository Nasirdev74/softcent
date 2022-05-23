import 'package:Softcent/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SizedBox(
            height: size.height,
            width: size.width,
            child: Center(
              child: Image(
                image: const AssetImage(
                  'assets/icons/softcent_logo.png',
                ),
                width: 230.w,
              ),
            ),
          ),
          Positioned(
            bottom: 22.h,
            child: SizedBox(
              width: size.width,
              child: Center(
                child: Shimmer.fromColors(
                  baseColor: AppColors.primary,
                  highlightColor: AppColors.secondary,
                  direction: ShimmerDirection.ltr,
                  period: const Duration(milliseconds: 900),
                  child: Text(
                    'Flutter Test App',
                    style: GoogleFonts.notoSans(
                      color: AppColors.primary,
                      fontSize: 23.sp
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
