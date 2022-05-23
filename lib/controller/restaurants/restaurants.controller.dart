import 'package:Softcent/data/api/api.dart';
import 'package:Softcent/main.dart';
import 'package:Softcent/model/model.dart' as m;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RestaurantsController extends GetxController {
  List<m.Restaurant> restaurants = [];
  bool isLoading = true;

  final RestaurantAPI restaurantAPI = RestaurantAPI();

  updateRestaurants() async {
    final startTime = DateTime.now();
    await restaurantAPI.allRestaurants(
      onSuccess: (data) {
        try {
          List<m.Restaurant> rests = [];
          final Iterable results = data['Result'] ?? [];
          for (var result in results) {
            rests.add(m.Restaurant.fromJson(result ?? {}));
          }
          restaurants.assignAll(rests);
          update();
          dPrint('restaurants updated: ${restaurants.length}, '
              'loading time:  ${startTime.difference(DateTime.now())}');
        } catch (_) {
          dPrint('restaurants data parsing error: $_');
        }
      },
      onError: (error) => dPrint(error.toString()),
    );
  }

  onRefresh() async => await updateRestaurants();

  @override
  onInit() {
    super.onInit();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await updateRestaurants();
      isLoading = false;
      update();
    });
  }

  @override
  onClose() {
    super.onClose();
    restaurantAPI.close();
  }
}
