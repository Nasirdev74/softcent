import 'package:Softcent/controller/controller.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPages extends StatelessWidget {
  DashboardPages({Key? key}) : super(key: key);
  final DashboardController controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Swiper(
        itemCount: controller.pages.length,
        onIndexChanged: (i) => Get.find<DashboardController>().currentIndex = i,
        loop: false,
        physics: const BouncingScrollPhysics(),
        controller: controller.swiperController,
        itemBuilder: (context, index) {
          return controller.pages[index];
        },
      ),
    );
  }
}
