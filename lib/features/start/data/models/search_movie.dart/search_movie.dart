// To parse this JSON data, do
//
//     final searchMovie = searchMovieFromMap(jsonString);

import 'dart:convert';

import 'package:movie_app/features/start/domain/entities/search_movie/search_movie_entity.dart';

SearchMovie searchMovieFromMap(String str) =>
    SearchMovie.fromMap(json.decode(str));

String searchMovieToMap(SearchMovie data) => json.encode(data.toMap());

class SearchMovie extends SearchMovieEntity {
  SearchMovie({
    this.searchType,
    this.expression,
    this.results,
    this.errorMessage,
  }) : super(
          searchType: searchType,
          expression: expression,
          resultEntity: results,
        );

  String? searchType;
  String? expression;
  List<Result>? results;
  String? errorMessage;

  factory SearchMovie.fromMap(Map<String, dynamic> json) => SearchMovie(
        searchType: json["searchType"],
        expression: json["expression"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromMap(x))),
        errorMessage: json["errorMessage"],
      );

  Map<String, dynamic> toMap() => {
        "searchType": searchType,
        "expression": expression,
        "results": List<dynamic>.from(results!.map((x) => x.toMap())),
        "errorMessage": errorMessage,
      };
}

class Result extends ResultEntity {
  Result({
    this.id,
    this.resultType,
    this.image,
    this.title,
    this.description,
  }) : super(
            id: id,
            resultType: resultType,
            image: image,
            title: title,
            description: description);

  String? id;
  String? resultType;
  String? image;
  String? title;
  String? description;

  factory Result.fromMap(Map<String, dynamic> json) => Result(
        id: json["id"],
        resultType: json["resultType"],
        image: json["image"],
        title: json["title"],
        description: json["description"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "resultType": resultType,
        "image": image,
        "title": title,
        "description": description,
      };
}
