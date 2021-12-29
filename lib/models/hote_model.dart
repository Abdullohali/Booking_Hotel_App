class Hotel {
  Hotel({
    this.id,
    this.country,
    this.city,
    this.phone,
    this.name,
    this.stars,
    this.price,
    this.img,
    this.v,
  });

  String? id;
  String? country;
  String? city;
  String? phone;
  String? name;
  double? stars;
  double? price;
  String? img;
  int? v;

  factory Hotel.fromJson(Map<String, dynamic> json) => Hotel(
        id: json["_id"],
        country: json["country"],
        city: json["city"],
        phone: json["phone"],
        name: json["name"],
        stars: json["stars"].toDouble(),
        price: json["price"].toDouble(),
        img: json["img"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "country": country,
        "city": city,
        "phone": phone,
        "name": name,
        "stars": stars,
        "price": price,
        "img": img,
        "__v": v,
      };
}
