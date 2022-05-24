import 'package:Softcent/ui/theme/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RestaurantImage extends StatelessWidget {
  const RestaurantImage({Key? key, required this.URL}) : super(key: key);
  final String URL;

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    return Container(
      color: AppColors.primary,
      height: 218.w,
      width: w,
      child: CachedNetworkImage(
        imageUrl: URL,
        placeholder: (_, __) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.white,
            ),
          );
        },
        errorWidget: (_, __, ___) {
          return Center(
            child: SvgPicture.asset(
              'assets/icons/not_found.svg',
              height: 100.w,
              color: AppColors.white,
            ),
          );
        },
        height: 218.w,
        width: w,
        fit: BoxFit.cover,
      ),
    );
  }
}
