import 'package:Softcent/ui/component/component.dart';
import 'package:Softcent/ui/view/restaurants/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryWiseRestaurants extends StatelessWidget {
  const CategoryWiseRestaurants({
    Key? key,
    required this.title,
    this.showGiftBox = true,
  }) : super(key: key);

  final String title;
  final bool showGiftBox;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(),
      children: [
        CategoryTitle(title: title, showGiftBox: showGiftBox),
        SizedBox(height: 15.h),
        Restaurants(),
      ],
    );
  }
}
