import 'package:Softcent/controller/binding.dart';
import 'package:Softcent/ui/view/view.dart';
import 'package:get/get.dart';

part './app_routes.dart';

abstract class AppPages {
  static const trzm = Transition.zoom;
  static const trrl = Transition.rightToLeft;
  static const trD2 = Duration(milliseconds: 200);
  static const trD3 = Duration(milliseconds: 300);
  static final pages = <GetPage>[
    GetPage(name: AppRoutes.SPLASH, page: () => const SplashView(), binding: SplashBinding(), transition: trzm, transitionDuration: trD2),
    GetPage(name: AppRoutes.RESTAURANT, page: () => const RestaurantView(), transition: trrl, transitionDuration: trD2),
    GetPage(name: AppRoutes.RESTAURANTS, page: () => const RestaurantsView(), binding: RestaurantsBinding(), transition: trrl, transitionDuration: trD2),
  ];
}