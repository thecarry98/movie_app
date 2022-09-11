// To parse this JSON data, do
//
//     final movieAuth = movieAuthFromMap(jsonString);

import 'dart:convert';

import '../../../domain/entities/auth/movie_detail_auth_entity.dart';

// MovieAuth movieAuthFromMap(String str) => MovieAuth.fromMap(str);

String movieAuthToMap(MovieAuth data) => json.encode(data.toMap());

class MovieAuth extends MovieDetailAuthEntity {
  MovieAuth({
    this.imDbId,
    this.title,
    this.fullTitle,
    this.type,
    this.year,
    this.items,
    this.errorMessage,
  }) : super(
          imDbId: imDbId,
          fullTitle: fullTitle,
          type: type,
          year: year,
          itemAuthEntity: items,
        );

  String? imDbId;
  String? title;
  String? fullTitle;
  String? type;
  String? year;
  List<Item>? items;
  String? errorMessage;

  factory MovieAuth.fromMap(Map<String, dynamic> json) => MovieAuth(
        imDbId: json["imDbId"],
        title: json["title"],
        fullTitle: json["fullTitle"],
        type: json["type"],
        year: json["year"],
        items: List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
        errorMessage: json["errorMessage"],
      );

  Map<String, dynamic> toMap() => {
        "imDbId": imDbId,
        "title": title,
        "fullTitle": fullTitle,
        "type": type,
        "year": year,
        "items": List<dynamic>.from(items!.map((x) => x.toMap())),
        "errorMessage": errorMessage,
      };
}

class Item extends ItemAuthEntity {
  Item({
    this.title,
    this.image,
  }) : super(title: title, image: image);

  String? title;
  String? image;

  factory Item.fromMap(Map<String, dynamic> json) => Item(
        title: json["title"],
        image: json["image"],
      );

  Map<String, dynamic> toMap() => {
        "title": title,
        "image": image,
      };
}
