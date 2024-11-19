// To parse this JSON data, do
//
//     final shop = shopFromJson(jsonString);

import 'dart:convert';

List<Shop> shopFromJson(String str) => List<Shop>.from(json.decode(str).map((x) => Shop.fromJson(x)));

String shopToJson(List<Shop> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Shop {
    String model;
    String pk;
    Fields fields;

    Shop({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Shop.fromJson(Map<String, dynamic> json) => Shop(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    int price;
    String description;
    String flower;
    int quantity;

    Fields({
        required this.user,
        required this.name,
        required this.price,
        required this.description,
        required this.flower,
        required this.quantity,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        flower: json["flower"],
        quantity: json["quantity"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "description": description,
        "flower": flower,
        "quantity": quantity,
    };
}
