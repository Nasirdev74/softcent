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

          /// curved shadow
          SizedBox(
            height: 73.5.w,
            child: Column(
              children: [
                ClipPath(
                  clipper: CurveClipper(),
                  child: Container(
                    height: 30.w,
                    width: 80.w,
                    color: const Color(0xFFF6F6F7),
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

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 30;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
        controlPoint.dx,
        controlPoint.dy,
        endPoint.dx,
        endPoint.dy,
      )
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
