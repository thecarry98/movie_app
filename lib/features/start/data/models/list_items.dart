// To parse this JSON data, do
//
//     final listItems = listItemsFromMap(jsonString);

import 'dart:convert';

import 'package:movie_app/features/start/domain/entities/movie_entity.dart';

ListItems listItemsFromMap(String str) => ListItems.fromMap(json.decode(str));

String listItemsToMap(ListItems data) => json.encode(data.toMap());

class ListItems extends ListMovie {
  ListItems({
    required this.items,
    this.errorMessage,
  }) : super(list: items);

  List<Item> items;
  String? errorMessage;

  factory ListItems.fromMap(Map<String, dynamic> json) => ListItems(
        items: List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
        errorMessage: json["errorMessage"],
      );

  Map<String, dynamic> toMap() => {
        "items": List<dynamic>.from(items.map((x) => x.toMap())),
        "errorMessage": errorMessage,
      };
}

class Item extends MovieEntity {
  Item({
    required this.id,
    this.rank,
    this.rankUpDown,
    required this.title,
    this.fullTitle,
    required this.year,
    required this.image,
    this.crew,
    required this.imDbRating,
    this.imDbRatingCount,
  }) : super(
            id: id,
            title: title,
            year: year,
            image: image,
            imDbRating: imDbRating);

  String id;
  String? rank;
  String? rankUpDown;
  String title;
  String? fullTitle;
  String year;
  String image;
  String? crew;
  String imDbRating;
  String? imDbRatingCount;

  factory Item.fromMap(Map<String, dynamic> json) => Item(
        id: json["id"],
        rank: json["rank"],
        rankUpDown: json["rankUpDown"],
        title: json["title"],
        fullTitle: json["fullTitle"],
        year: json["year"],
        image: json["image"],
        crew: json["crew"],
        imDbRating: json["imDbRating"],
        imDbRatingCount: json["imDbRatingCount"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "rank": rank,
        "rankUpDown": rankUpDown,
        "title": title,
        "fullTitle": fullTitle,
        "year": year,
        "image": image,
        "crew": crew,
        "imDbRating": imDbRating,
        "imDbRatingCount": imDbRatingCount,
      };
}
