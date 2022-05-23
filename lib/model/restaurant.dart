class Restaurant {
  Restaurant({
    required this.reviews,
    required this.parkinglot,
    required this.location,
    required this.phone,
    required this.averagecost,
    required this.image,
    required this.imageId,
    required this.restauranttype,
    required this.id,
    required this.businessname,
    required this.address,
    required this.menu,
    required this.slug,
    required this.email,
    required this.v,
    required this.foodMenu,
  });

  Restaurant.fromJson(dynamic json) {
    reviews = json['reviews'] ?? 0;
    parkinglot = json['parkinglot'] ?? false;
    location = json['location'] ?? '';
    phone = json['phone'] ?? '';
    averagecost = json['averagecost'] ?? 0;
    image = json['image'] ?? '';
    imageId = json['imageId'] ?? '';
    restauranttype = json['restauranttype'] ?? '';
    id = json['id'] ?? '';
    businessname = json['businessname'] ?? '';
    address = json['address'] ?? '';
    menu = json['menu'] ?? '';
    slug = json['slug'] ?? '';
    email = json['email'] ?? '';
    v = json['__v'] ?? 0;
    if (json['foodMenu'] != null) {
      foodMenu = [];
      json['foodMenu'].forEach((v) {
        foodMenu.add(v);
      });
    }
  }

  int reviews = 0;
  bool parkinglot = false;
  String location = '';
  String phone = '';
  int averagecost = 0;
  String image = '';
  String imageId = '';
  String restauranttype = '';
  String id = '';
  String businessname = '';
  String address = '';
  String menu = '';
  String slug = '';
  String email = '';
  int v = 0;
  List<dynamic> foodMenu = [];

  Restaurant copyWith({
    int? reviews,
    bool? parkinglot,
    String? location,
    String? phone,
    int? averagecost,
    String? image,
    String? imageId,
    String? restauranttype,
    String? id,
    String? businessname,
    String? address,
    String? menu,
    String? slug,
    String? email,
    int? v,
    List<dynamic>? foodMenu,
  }) =>
      Restaurant(
        reviews: reviews ?? this.reviews,
        parkinglot: parkinglot ?? this.parkinglot,
        location: location ?? this.location,
        phone: phone ?? this.phone,
        averagecost: averagecost ?? this.averagecost,
        image: image ?? this.image,
        imageId: imageId ?? this.imageId,
        restauranttype: restauranttype ?? this.restauranttype,
        id: id ?? this.id,
        businessname: businessname ?? this.businessname,
        address: address ?? this.address,
        menu: menu ?? this.menu,
        slug: slug ?? this.slug,
        email: email ?? this.email,
        v: v ?? this.v,
        foodMenu: foodMenu ?? this.foodMenu,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['reviews'] = reviews;
    map['parkinglot'] = parkinglot;
    map['location'] = location;
    map['phone'] = phone;
    map['averagecost'] = averagecost;
    map['image'] = image;
    map['imageId'] = imageId;
    map['restauranttype'] = restauranttype;
    map['businessname'] = businessname;
    map['address'] = address;
    map['menu'] = menu;
    map['slug'] = slug;
    map['email'] = email;
    map['__v'] = v;
    map['foodMenu'] = foodMenu.map((v) => v).toList();
    map['id'] = id;
    return map;
  }

  @override
  String toString() {
    return 'Restaurant{reviews: $reviews, parkinglot: $parkinglot, location: $location, phone: $phone, averagecost: $averagecost, image: $image, imageId: $imageId, restauranttype: $restauranttype, id: $id, businessname: $businessname, address: $address, menu: $menu, slug: $slug, email: $email, v: $v, foodMenu: $foodMenu}';
  }
}
