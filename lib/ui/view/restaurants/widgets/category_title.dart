import 'package:Softcent/ui/dimension/dimension.dart';
import 'package:Softcent/ui/shared/shared.dart';
import 'package:Softcent/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({
    Key? key,
    required this.title,
    this.showGiftBox = true,
  }) : super(key: key);

  final String title;
  final bool showGiftBox;

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        top: 27.w,
        bottom: 16.w,
        left: Dimension.padding.w,
      ),
      child: Row(
        children: [
          Visibility(
            visible: showGiftBox,
            child: Image.asset(
              'assets/icons/gift_box.png',
              width: 22.w,
            ),
          ),
          Visibility(visible: showGiftBox, child: SizedBox(width: 8.w)),
          MagicText(
            title,
            maxWidth: w - (showGiftBox ? 50.w : 20.w),
            maxLines: 3,
            style: headline1,
          ),
        ],
      ),
    );
  }
}
