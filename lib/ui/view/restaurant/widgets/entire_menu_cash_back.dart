import 'package:Softcent/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EntireMenuCashBack extends StatelessWidget {
  const EntireMenuCashBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 13.w,
        ),
        child: Row(
          children: [
            SizedBox(
              height: 18.w,
              width: 18.w,
              child: Image.asset(
                'assets/icons/percent.png',
              ),
            ),
            SizedBox(width: 10.w),
            Text(
              '10% cashback on ther entire menu',
              style: bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
