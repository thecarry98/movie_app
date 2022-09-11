// To parse this JSON data, do
//
//     final fullMovieDetail = fullMovieDetailFromMap(jsonString);

import 'dart:convert';

import '../../../domain/entities/detail/full_movie_detail_entity.dart';

FullMovieDetail fullMovieDetailFromMap(String str) =>
    FullMovieDetail.fromMap(json.decode(str));

String fullMovieDetailToMap(FullMovieDetail data) => json.encode(data.toMap());

class FullMovieDetail extends FullMovieDetailEntity {
  FullMovieDetail({
    this.id,
    this.title,
    this.originalTitle,
    this.fullTitle,
    this.type,
    this.year,
    this.image,
    this.releaseDate,
    this.runtimeMins,
    this.runtimeStr,
    this.plot,
    this.plotLocal,
    this.plotLocalIsRtl,
    this.awards,
    this.directors,
    this.directorList,
    this.writers,
    this.writerList,
    this.stars,
    this.starList,
    this.actorList,
    this.fullCast,
    this.genres,
    this.genreList,
    this.companies,
    this.companyList,
    this.countries,
    this.countryList,
    this.languages,
    this.languageList,
    this.contentRating,
    this.imDbRating,
    this.imDbRatingVotes,
    this.metacriticRating,
    this.ratings,
    this.wikipedia,
    this.posters,
    this.images,
    this.trailer,
    this.boxOffice,
    this.tagline,
    this.keywords,
    this.keywordList,
    this.similars,
    this.tvSeriesInfo,
    this.tvEpisodeInfo,
    this.errorMessage,
  }) : super(
          id: id,
          plot: plot,
          imageEntity: images,
          listActorListEntity: actorList,
          trailerEntity: trailer,
        );

  String? id;
  String? title;
  String? originalTitle;
  String? fullTitle;
  String? type;
  String? year;
  String? image;
  DateTime? releaseDate;
  String? runtimeMins;
  String? runtimeStr;
  String? plot;
  String? plotLocal;
  bool? plotLocalIsRtl;
  String? awards;
  String? directors;
  List<CompanyListElement>? directorList;
  String? writers;
  List<CompanyListElement>? writerList;
  String? stars;
  List<CompanyListElement>? starList;
  List<ActorList>? actorList;
  dynamic fullCast;
  String? genres;
  List<CountryListElement>? genreList;
  String? companies;
  List<CompanyListElement>? companyList;
  String? countries;
  List<CountryListElement>? countryList;
  String? languages;
  List<CountryListElement>? languageList;
  String? contentRating;
  String? imDbRating;
  String? imDbRatingVotes;
  String? metacriticRating;
  dynamic ratings;
  dynamic wikipedia;
  Images? posters;
  Images? images;
  Trailer? trailer;
  BoxOffice? boxOffice;
  dynamic tagline;
  String? keywords;
  List<String>? keywordList;
  List<Similar>? similars;
  dynamic tvSeriesInfo;
  dynamic tvEpisodeInfo;
  dynamic errorMessage;

  factory FullMovieDetail.fromMap(Map<String, dynamic> json) => FullMovieDetail(
        id: json["id"],
        title: json["title"],
        originalTitle: json["originalTitle"],
        fullTitle: json["fullTitle"],
        type: json["type"],
        year: json["year"],
        image: json["image"],
        releaseDate: DateTime.parse(json["releaseDate"]),
        runtimeMins: json["runtimeMins"],
        runtimeStr: json["runtimeStr"],
        plot: json["plot"],
        plotLocal: json["plotLocal"],
        plotLocalIsRtl: json["plotLocalIsRtl"],
        awards: json["awards"],
        directors: json["directors"],
        directorList: List<CompanyListElement>.from(
            json["directorList"].map((x) => CompanyListElement.fromMap(x))),
        writers: json["writers"],
        writerList: List<CompanyListElement>.from(
            json["writerList"].map((x) => CompanyListElement.fromMap(x))),
        stars: json["stars"],
        starList: List<CompanyListElement>.from(
            json["starList"].map((x) => CompanyListElement.fromMap(x))),
        actorList: List<ActorList>.from(
            json["actorList"].map((x) => ActorList.fromMap(x))),
        fullCast: json["fullCast"],
        genres: json["genres"],
        genreList: List<CountryListElement>.from(
            json["genreList"].map((x) => CountryListElement.fromMap(x))),
        companies: json["companies"],
        companyList: List<CompanyListElement>.from(
            json["companyList"].map((x) => CompanyListElement.fromMap(x))),
        countries: json["countries"],
        countryList: List<CountryListElement>.from(
            json["countryList"].map((x) => CountryListElement.fromMap(x))),
        languages: json["languages"],
        languageList: List<CountryListElement>.from(
            json["languageList"].map((x) => CountryListElement.fromMap(x))),
        contentRating: json["contentRating"],
        imDbRating: json["imDbRating"],
        imDbRatingVotes: json["imDbRatingVotes"],
        metacriticRating: json["metacriticRating"],
        ratings: json["ratings"],
        wikipedia: json["wikipedia"],
        posters:
            json["posters"] != null ? Images.fromMap(json["posters"]) : null,
        images: Images.fromMap(json["images"]),
        trailer: Trailer.fromMap(json["trailer"]),
        boxOffice: BoxOffice.fromMap(json["boxOffice"]),
        tagline: json["tagline"],
        keywords: json["keywords"],
        keywordList: List<String>.from(json["keywordList"].map((x) => x)),
        similars:
            List<Similar>.from(json["similars"].map((x) => Similar.fromMap(x))),
        tvSeriesInfo: json["tvSeriesInfo"],
        tvEpisodeInfo: json["tvEpisodeInfo"],
        errorMessage: json["errorMessage"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "originalTitle": originalTitle,
        "fullTitle": fullTitle,
        "type": type,
        "year": year,
        "image": image,
        "releaseDate":
            "${releaseDate?.year.toString().padLeft(4, '0')}-${releaseDate!.month.toString().padLeft(2, '0')}-${releaseDate!.day.toString().padLeft(2, '0')}",
        "runtimeMins": runtimeMins,
        "runtimeStr": runtimeStr,
        "plot": plot,
        "plotLocal": plotLocal,
        "plotLocalIsRtl": plotLocalIsRtl,
        "awards": awards,
        "directors": directors,
        "directorList": List<dynamic>.from(directorList!.map((x) => x.toMap())),
        "writers": writers,
        "writerList": List<dynamic>.from(writerList!.map((x) => x.toMap())),
        "stars": stars,
        "starList": List<dynamic>.from(starList!.map((x) => x.toMap())),
        "actorList": List<dynamic>.from(actorList!.map((x) => x.toMap())),
        "fullCast": fullCast,
        "genres": genres,
        "genreList": List<dynamic>.from(genreList!.map((x) => x.toMap())),
        "companies": companies,
        "companyList": List<dynamic>.from(companyList!.map((x) => x.toMap())),
        "countries": countries,
        "countryList": List<dynamic>.from(countryList!.map((x) => x.toMap())),
        "languages": languages,
        "languageList": List<dynamic>.from(languageList!.map((x) => x.toMap())),
        "contentRating": contentRating,
        "imDbRating": imDbRating,
        "imDbRatingVotes": imDbRatingVotes,
        "metacriticRating": metacriticRating,
        "ratings": ratings,
        "wikipedia": wikipedia,
        "posters": posters!.toMap(),
        "images": images!.toMap(),
        "trailer": trailer!.toMap(),
        "boxOffice": boxOffice!.toMap(),
        "tagline": tagline,
        "keywords": keywords,
        "keywordList": List<dynamic>.from(keywordList!.map((x) => x)),
        "similars": List<dynamic>.from(similars!.map((x) => x.toMap())),
        "tvSeriesInfo": tvSeriesInfo,
        "tvEpisodeInfo": tvEpisodeInfo,
        "errorMessage": errorMessage,
      };
}

class ActorList extends ActorListEntity {
  ActorList({
    this.id,
    this.image,
    this.name,
    this.asCharacter,
  }) : super(id: id, image: image, name: name, asCharacter: asCharacter);

  String? id;
  String? image;
  String? name;
  String? asCharacter;

  factory ActorList.fromMap(Map<String, dynamic> json) => ActorList(
        id: json["id"],
        image: json["image"],
        name: json["name"],
        asCharacter: json["asCharacter"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "image": image,
        "name": name,
        "asCharacter": asCharacter,
      };
}

class BoxOffice {
  BoxOffice({
    this.budget,
    this.openingWeekendUsa,
    this.grossUsa,
    this.cumulativeWorldwideGross,
  });

  String? budget;
  String? openingWeekendUsa;
  String? grossUsa;
  String? cumulativeWorldwideGross;

  factory BoxOffice.fromMap(Map<String, dynamic> json) => BoxOffice(
        budget: json["budget"],
        openingWeekendUsa: json["openingWeekendUSA"],
        grossUsa: json["grossUSA"],
        cumulativeWorldwideGross: json["cumulativeWorldwideGross"],
      );

  Map<String, dynamic> toMap() => {
        "budget": budget,
        "openingWeekendUSA": openingWeekendUsa,
        "grossUSA": grossUsa,
        "cumulativeWorldwideGross": cumulativeWorldwideGross,
      };
}

class CompanyListElement {
  CompanyListElement({
    this.id,
    this.name,
  });

  String? id;
  String? name;

  factory CompanyListElement.fromMap(Map<String, dynamic> json) =>
      CompanyListElement(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
      };
}

class CountryListElement {
  CountryListElement({
    this.key,
    this.value,
  });

  String? key;
  String? value;

  factory CountryListElement.fromMap(Map<String, dynamic> json) =>
      CountryListElement(
        key: json["key"],
        value: json["value"],
      );

  Map<String, dynamic> toMap() => {
        "key": key,
        "value": value,
      };
}

class Images extends ImagesEntity {
  Images({
    this.imDbId,
    this.title,
    this.fullTitle,
    this.type,
    this.year,
    this.items,
    this.errorMessage,
    this.posters,
    this.backdrops,
  }) : super(imDbId: imDbId, itemsImageEntity: items);

  String? imDbId;
  String? title;
  String? fullTitle;
  String? type;
  String? year;
  List<Item>? items;
  String? errorMessage;
  List<Backdrop>? posters;
  List<Backdrop>? backdrops;

  factory Images.fromMap(Map<String, dynamic> json) => Images(
        imDbId: json['imDbId'],
        title: json["title"],
        fullTitle: json["fullTitle"],
        type: json["type"],
        year: json["year"],
        items: json["items"] == null
            ? null
            : List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
        errorMessage: json["errorMessage"],
        posters: json["posters"] == null
            ? null
            : List<Backdrop>.from(
                json["posters"].map((x) => Backdrop.fromMap(x))),
        backdrops: json["backdrops"] == null
            ? null
            : List<Backdrop>.from(
                json["backdrops"].map((x) => Backdrop.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "imDbId": imDbId,
        "title": title,
        "fullTitle": fullTitle,
        "type": type,
        "year": year,
        "items": items == null
            ? null
            : List<dynamic>.from(items!.map((x) => x.toMap())),
        "errorMessage": errorMessage,
        "posters": posters == null
            ? null
            : List<dynamic>.from(posters!.map((x) => x.toMap())),
        "backdrops": backdrops == null
            ? null
            : List<dynamic>.from(backdrops!.map((x) => x.toMap())),
      };
}

class Backdrop {
  Backdrop({
    this.id,
    this.link,
    this.aspectRatio,
    this.language,
    this.width,
    this.height,
  });

  String? id;
  String? link;
  double? aspectRatio;
  Language? language;
  int? width;
  int? height;

  factory Backdrop.fromMap(Map<String, dynamic> json) => Backdrop(
        id: json["id"],
        link: json["link"],
        aspectRatio: json["aspectRatio"].toDouble(),
        language: languageValues.map![json["language"]],
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "link": link,
        "aspectRatio": aspectRatio,
        "language": languageValues.reverse[language],
        "width": width,
        "height": height,
      };
}

enum Language { EN }

final languageValues = EnumValues({"en": Language.EN});

class Item extends ItemsImageEntity {
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

class Similar {
  Similar({
    this.id,
    this.title,
    this.image,
    this.imDbRating,
  });

  String? id;
  String? title;
  String? image;
  String? imDbRating;

  factory Similar.fromMap(Map<String, dynamic> json) => Similar(
        id: json["id"],
        title: json["title"],
        image: json["image"],
        imDbRating: json["imDbRating"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "image": image,
        "imDbRating": imDbRating,
      };
}

class Trailer extends TrailerEntity {
  Trailer({
    this.imDbId,
    this.title,
    this.fullTitle,
    this.type,
    this.year,
    this.videoId,
    this.videoTitle,
    this.videoDescription,
    this.thumbnailUrl,
    this.uploadDate,
    this.link,
    this.linkEmbed,
    this.errorMessage,
  }) : super(imDbId: imDbId, videoId: videoId, link: link);

  String? imDbId;
  String? title;
  String? fullTitle;
  String? type;
  String? year;
  String? videoId;
  String? videoTitle;
  String? videoDescription;
  String? thumbnailUrl;
  dynamic uploadDate;
  String? link;
  String? linkEmbed;
  String? errorMessage;

  factory Trailer.fromMap(Map<String, dynamic> json) => Trailer(
        imDbId: json["imDbId"],
        title: json["title"],
        fullTitle: json["fullTitle"],
        type: json["type"],
        year: json["year"],
        videoId: json["videoId"],
        videoTitle: json["videoTitle"],
        videoDescription: json["videoDescription"],
        thumbnailUrl: json["thumbnailUrl"],
        uploadDate: json["uploadDate"],
        link: json["link"],
        linkEmbed: json["linkEmbed"],
        errorMessage: json["errorMessage"],
      );

  Map<String, dynamic> toMap() => {
        "imDbId": imDbId,
        "title": title,
        "fullTitle": fullTitle,
        "type": type,
        "year": year,
        "videoId": videoId,
        "videoTitle": videoTitle,
        "videoDescription": videoDescription,
        "thumbnailUrl": thumbnailUrl,
        "uploadDate": uploadDate,
        "link": link,
        "linkEmbed": linkEmbed,
        "errorMessage": errorMessage,
      };
}

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
