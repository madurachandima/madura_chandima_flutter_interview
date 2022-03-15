import 'dart:convert';

ProductDetailsModel productDetailsFromJson(String str) =>
    ProductDetailsModel.fromJson(json.decode(str));

String productDetailsToJson(ProductDetailsModel data) =>
    json.encode(data.toJson());

class ProductDetailsModel {
  ProductDetailsModel({
    this.id,
    this.price,
    this.title,
    this.images,
    this.rating,
    this.description,
  });

  String? id;
  String? price;
  String? title;
  String? images;
  double? rating;
  String? description;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      ProductDetailsModel(
        id: json["id"],
        price: json["price"],
        title: json["title"],
        images: json["images"],
        rating: json["rating"].toDouble(),
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "price": price,
        "title": title,
        "images": images,
        "rating": rating,
        "description": description,
      };
}
