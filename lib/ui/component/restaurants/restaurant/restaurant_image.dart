import 'package:Softcent/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RestaurantImage extends StatelessWidget {
  const RestaurantImage({Key? key, required this.imageURL}) : super(key: key);
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: CachedNetworkImage(
        imageUrl: imageURL,
        placeholder: (_, __) {
          return SizedBox(
            height: 100.w,
            width: 190.w,
            child: const Center(
              child: CircularProgressIndicator(
                color: AppColors.primary,
              ),
            ),
          );
        },
        errorWidget: (_, __, ___) {
          return SizedBox(
            height: 100.w,
            width: 190.w,
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/not_found.svg',
                color: AppColors.textGrey,
                height: 60.w,
              ),
            ),
          );
        },
        height: 100.w,
        width: 190.w,
        fit: BoxFit.cover,
      ),
    );
  }
}
