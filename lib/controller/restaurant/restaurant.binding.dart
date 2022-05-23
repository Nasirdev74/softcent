import 'package:Softcent/controller/controller.dart';
import 'package:get/get.dart';

class RestaurantBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(RestaurantController());
  }
}
