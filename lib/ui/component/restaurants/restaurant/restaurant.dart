import 'package:Softcent/model/model.dart' as m;
import 'package:Softcent/ui/component/restaurants/restaurant/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Restaurant extends StatelessWidget {
  const Restaurant({Key? key, required this.restaurant}) : super(key: key);
  final m.Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topLeft,
          children: [
            RestaurantImage(
              imageURL: restaurant.image,
            ),
            Row(
              children: [
                const CashBack(cashback: 20),
                GiftBox(showGiftBox: restaurant.v == 0),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 50.w,
          width: 190.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 9.w),
              Row(
                children: [
                  RestaurantName(restaurantName: restaurant.businessname),
                  const Spacer(),
                  const RestaurantRating(rating: 4.6),
                ],
              ),
              const Spacer(),
              const RestaurantLocation(location: 'Tallinn, Estonia'),
            ],
          ),
        ),
      ],
    );
  }
}
