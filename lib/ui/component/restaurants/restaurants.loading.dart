import 'package:Softcent/ui/dimension/dimension.dart';
import 'package:Softcent/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class RestaurantsLoading extends StatelessWidget {
  const RestaurantsLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.w,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(
          left: Dimension.padding.w,
          right: Dimension.padding.w,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (_, __) {
          return Shimmer.fromColors(
            baseColor: AppColors.primary.withAlpha(50),
            highlightColor: AppColors.primary.withAlpha(100),
            child: Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: Column(
                children: [
                  Container(
                    height: 100.w,
                    width: 190.w,
                    decoration: BoxDecoration(
                      color: AppColors.highlightedTextColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  SizedBox(
                    height: 50.w,
                    width: 190.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 9.w),
                        Container(
                          height: 15.w,
                          width: 190.w,
                          decoration: BoxDecoration(
                            color: AppColors.primary.withAlpha(100),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 12.w,
                          width: 190.w,
                          decoration: BoxDecoration(
                            color: AppColors.primary.withAlpha(100),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
