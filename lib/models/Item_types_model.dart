import 'dart:convert';

List<ItemTypesModel> itemTypesModelFromJson(String str) =>
    List<ItemTypesModel>.from(
        json.decode(str).map((x) => ItemTypesModel.fromJson(x)));

String itemTypesModelToJson(List<ItemTypesModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ItemTypesModel {
  ItemTypesModel({
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

  factory ItemTypesModel.fromJson(Map<String, dynamic> json) => ItemTypesModel(
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
