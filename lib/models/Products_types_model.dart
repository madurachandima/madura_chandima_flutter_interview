import 'dart:convert';

List<ProductTypesModel> productTypesModelFromJson(String str) =>
    List<ProductTypesModel>.from(
        json.decode(str).map((x) => ProductTypesModel.fromJson(x)));

String productTypesModelToJson(List<ProductTypesModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductTypesModel {
  ProductTypesModel({
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

  factory ProductTypesModel.fromJson(Map<String, dynamic> json) =>
      ProductTypesModel(
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
