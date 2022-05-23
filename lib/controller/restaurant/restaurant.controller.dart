import 'package:Softcent/main.dart';
import 'package:Softcent/model/model.dart' as m;
import 'package:get/get.dart';

class RestaurantController extends GetxController {
  final m.Restaurant restaurant = Get.arguments as m.Restaurant;

  @override
  onInit(){
    super.onInit();
    dPrint('restaurant received: =================================================');
    dPrint(restaurant.toString());
  }
}
