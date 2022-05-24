import 'package:Softcent/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PromoCode extends StatelessWidget {
  const PromoCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 14.2.w,
          ),
          child: Row(
            children: [
              SizedBox(
                height: 18.w,
                width: 18.w,
                child: SvgPicture.asset(
                  'assets/icons/promo_icon.svg',
                ),
              ),
              SizedBox(width: 10.w),
              Text(
                'Promo Code',
                style: bodyText2,
              ),
              const Spacer(),
              SvgPicture.asset(
                'assets/icons/arrow_forward.svg',
              ),
              SizedBox(width: 8.w),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
