import 'package:Softcent/data/api_client.dart';
import 'package:Softcent/data/url.dart';

class RestaurantAPI {
  final ApiClient apiClient = ApiClient();

  allRestaurants({
    required Function onSuccess,
    required Function onError,
  }) async {
    await apiClient.request(
      url: RestaurantURL.restaurant,
      method: Method.GET,
      body: {},
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  restaurantById({
    required String id,
    required Function onSuccess,
    required Function onError,
  }) async {
    await apiClient.request(
      url: '${RestaurantURL.restaurant}/$id',
      method: Method.GET,
      body: {},
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  close() => apiClient.close();
}
