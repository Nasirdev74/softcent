import 'package:Softcent/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantDescription extends StatelessWidget {
  const RestaurantDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: bodyText1,
        children: [
          const TextSpan(
            text: 'Did you know you can order your next pizza from Pizza Hut, right on your mobile phone? Neither did we… Until we received an SMS promotion from Pizza Hut’s dedicated SMS short code 694-88... ',
          ),
          TextSpan(
            text: 'Read more',
            style: headline2.copyWith(
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
