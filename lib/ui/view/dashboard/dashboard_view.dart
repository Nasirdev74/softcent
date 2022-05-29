import 'package:Softcent/ui/theme/app_colors.dart';
import 'package:Softcent/ui/theme/app_text_theme.dart';
import 'package:Softcent/ui/view/dashboard/widgets/widgets.dart';
import 'package:Softcent/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        final value = await showDialog<bool>(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: AppColors.white,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/icons/softcent_logo.png',
                      height: 40.w,
                      width: 40.w,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      AppConstant.appName,
                      style: headline1,
                    )
                  ],
                ),
                content: Text(
                  'Are you sure you want to exit?',
                  style: headline2,
                ),
                actions: <Widget>[
                  TextButton(
                    child: const Text(
                      'No',
                      style: TextStyle(
                        color: AppColors.textColor,
                      ),
                    ),
                    onPressed: () => Navigator.of(context).pop(false),
                  ),
                  SizedBox(width: 20.w),
                  TextButton(
                    child: const Text(
                      'Yes, exit',
                      style: TextStyle(
                        color: AppColors.textColor,
                      ),
                    ),
                    onPressed: () => Navigator.of(context).pop(true),
                  ),
                ],
              );
            });
        return value == true;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Stack(
              children: [
                DashboardPages(),
                const DashboardNavigation(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
