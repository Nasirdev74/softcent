import 'package:Softcent/ui/theme/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({Key? key, required this.imageURL}) : super(key: key);
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.w,
      width: 130.w,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
        child: CachedNetworkImage(
          imageUrl: imageURL,
          placeholder: (_, __) {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColors.primary,
              ),
            );
          },
          errorWidget: (_, __, ___) {
            return Center(
              child: SvgPicture.asset(
                'assets/icons/not_found.svg',
                height: 55.w,
                color: AppColors.primary,
              ),
            );
          },
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
