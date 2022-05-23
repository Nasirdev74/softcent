import 'package:Softcent/controller/binding.dart';
import 'package:Softcent/language/language.dart';
import 'package:Softcent/routes/app_pages.dart';
import 'package:Softcent/ui/theme/app_colors.dart';
import 'package:Softcent/ui/theme/app_theme.dart';
import 'package:Softcent/utils/app_constant.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:developer';
import 'package:get/get.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

Language language = Language();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SoftCent());
}

class SoftCent extends StatefulWidget {
  const SoftCent({Key? key}) : super(key: key);

  @override
  State<SoftCent> createState() => _SoftCentState();
}

class _SoftCentState extends State<SoftCent> {
  @override
  initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        systemStatusBarContrastEnforced: false,
        systemNavigationBarContrastEnforced: false,
        systemNavigationBarColor: AppColors.black,
        systemNavigationBarDividerColor: AppColors.black,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: AppConstant.defaultScreenSize,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) {
        return GetMaterialApp(
          title: AppConstant.appName,
          debugShowCheckedModeBanner: false,
          theme: appTheme,
          initialRoute: AppRoutes.SPLASH,
          getPages: AppPages.pages,
          initialBinding: RestaurantsBinding(),
        );
      },
    );
  }
}

void dPrint(String data, {Object className = '', int lineNo = 0}) {
  if (kDebugMode) {
    log('${className == '' ? '' : '$className:: '}${lineNo == 0 ? '' : '$lineNo:: '}$data');
  }
}
