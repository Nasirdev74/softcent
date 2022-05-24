import 'package:Softcent/ui/component/products/product/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.w,
      width: 130.w,
      decoration: BoxDecoration(
        color: const Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: const [
          ProductImage(
            imageURL: 'https://previews.123rf.com/images/tbralnina/tbralnina1905/tbralnina190500088/122980806-fresh-vegetables-and-fruits-in-bag-mesh-top-view-.jpg',
          ),
          ProductDetails(),
        ],
      ),
    );
  }
}
