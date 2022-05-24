import 'package:Softcent/ui/component/component.dart';
import 'package:Softcent/ui/dimension/dimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.w,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          left: Dimension.padding.w,
          right: Dimension.padding.w,
        ),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (_, __) => const BuildProduct(),
      ),
    );
  }
}
