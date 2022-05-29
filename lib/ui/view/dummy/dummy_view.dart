import 'package:Softcent/ui/theme/app_colors.dart';
import 'package:Softcent/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DummyView extends StatelessWidget {
  const DummyView({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/softcent_logo.png',
              width: 230.w,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: headline1.copyWith(
                color: AppColors.primary,
                fontSize: 30.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
