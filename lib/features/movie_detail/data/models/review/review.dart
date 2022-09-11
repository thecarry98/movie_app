// To parse this JSON data, do
//
//     final fullReview = fullReviewFromMap(jsonString);

import 'dart:convert';

import 'package:movie_app/features/movie_detail/domain/entities/review/review_entity.dart';

FullReview fullReviewFromMap(String str) =>
    FullReview.fromMap(json.decode(str));

String fullReviewToMap(FullReview data) => json.encode(data.toMap());

class FullReview extends FullReviewEntity {
  FullReview({
    this.imDbId,
    this.title,
    this.fullTitle,
    this.type,
    this.year,
    this.items,
    this.errorMessage,
  }) : super(imDbId: imDbId, itemReviewEntity: items);

  String? imDbId;
  String? title;
  String? fullTitle;
  String? type;
  String? year;
  List<Item>? items;
  String? errorMessage;

  factory FullReview.fromMap(Map<String, dynamic> json) => FullReview(
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

class Item extends ItemReviewEntity {
  Item({
    this.username,
    this.userUrl,
    this.reviewLink,
    this.warningSpoilers,
    this.date,
    this.rate,
    this.helpful,
    this.title,
    this.content,
  }) : super(
            username: username,
            userUrl: userUrl,
            date: date,
            rate: rate,
            content: content);

  String? username;
  String? userUrl;
  String? reviewLink;
  bool? warningSpoilers;
  String? date;
  String? rate;
  String? helpful;
  String? title;
  String? content;

  factory Item.fromMap(Map<String, dynamic> json) => Item(
        username: json["username"],
        userUrl: json["userUrl"],
        reviewLink: json["reviewLink"],
        warningSpoilers: json["warningSpoilers"],
        date: json["date"],
        rate: json["rate"],
        helpful: json["helpful"],
        title: json["title"],
        content: json["content"],
      );

  Map<String, dynamic> toMap() => {
        "username": username,
        "userUrl": userUrl,
        "reviewLink": reviewLink,
        "warningSpoilers": warningSpoilers,
        "date": date,
        "rate": rate,
        "helpful": helpful,
        "title": title,
        "content": content,
      };
}
