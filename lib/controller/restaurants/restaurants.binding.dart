import 'package:Softcent/controller/controller.dart';
import 'package:get/get.dart';

class RestaurantsBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(RestaurantsController(), permanent: true);
  }
}
