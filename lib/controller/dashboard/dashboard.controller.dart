import 'package:Softcent/ui/view/view.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  int _currentIndex = 1;
  final SwiperController swiperController = SwiperController();

  int get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    update();
  }

  List<Widget> pages = const [
    DummyView(title: 'Home'),
    RestaurantsView(),
    DummyView(title: 'Loyalty Card'),
    DummyView(title: 'Account'),
  ];
}
