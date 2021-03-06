import 'package:Softcent/model/model.dart' as m;
import 'package:Softcent/ui/component/component.dart';
import 'package:Softcent/ui/view/restaurants/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CategoryWiseRestaurants extends StatelessWidget {
  const CategoryWiseRestaurants({
    Key? key,
    required this.title,
    required this.restaurants,
    this.isLoading = true,
    this.showGiftBox = true,
  }) : super(key: key);

  final String title;
  final bool showGiftBox;
  final bool isLoading;
  final List<m.Restaurant> restaurants;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isLoading || restaurants.isNotEmpty,
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.only(),
        children: [
          CategoryTitle(title: title, showGiftBox: showGiftBox),
          isLoading
              ? const RestaurantsLoading()
              : Restaurants(restaurants: restaurants),
        ],
      ),
    );
  }
}
