import 'package:Softcent/controller/controller.dart';
import 'package:get/get.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController(), permanent: true);
    Get.put(RestaurantsController(), permanent: true);
  }
}
