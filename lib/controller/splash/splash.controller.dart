import 'package:Softcent/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  /// usually this controller is used to check authentication, language local, initial APIs.

  @override
  onInit() async {
    super.onInit();
    await Future.delayed(const Duration(seconds: 2), () {
      Get.offAllNamed(AppRoutes.RESTAURANTS);
    });
  }
}
