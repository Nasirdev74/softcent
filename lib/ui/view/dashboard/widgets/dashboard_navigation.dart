import 'package:Softcent/controller/controller.dart';
import 'package:Softcent/ui/theme/app_colors.dart';
import 'package:Softcent/ui/view/dashboard/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DashboardNavigation extends StatelessWidget {
  const DashboardNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          GetBuilder<DashboardController>(
            assignId: true,
            autoRemove: false,
            builder: (_) {
              return Container(
                height: 73.5.w,
                width: size.width,
                color: AppColors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: 26.5.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 96.5.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          NavigationIcon(
                            index: 0,
                            currentIndex: _.currentIndex,
                            iconPath: 'assets/icons/home_icon.svg',
                            label: 'Home',
                          ),
                          NavigationIcon(
                            index: 1,
                            currentIndex: _.currentIndex,
                            iconPath: 'assets/icons/offers_icon.png',
                            label: 'Offers',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 92.w),
                    const Spacer(),
                    SizedBox(
                      width: 118.5.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          NavigationIcon(
                            index: 2,
                            currentIndex: _.currentIndex,
                            iconPath: 'assets/icons/card_icon.svg',
                            label: 'Loyalty card',
                          ),
                          NavigationIcon(
                            index: 3,
                            currentIndex: _.currentIndex,
                            iconPath: 'assets/icons/user_icon.svg',
                            label: 'Account',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(
            height: 73.5.w,
            child: Column(
              children: [
                SizedBox(height: 3.w),
                Container(
                  height: 25,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFF6F6F7),
                        blurRadius: 3.w,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          const ScanButton(),
        ],
      ),
    );
  }
}
