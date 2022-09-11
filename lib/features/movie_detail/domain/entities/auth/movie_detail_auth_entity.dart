class MovieDetailAuthEntity {
  String? imDbId;
  String? fullTitle;
  String? type;
  String? year;
  List<ItemAuthEntity>? itemAuthEntity;

  MovieDetailAuthEntity(
      {this.imDbId, this.fullTitle, this.type, this.year, this.itemAuthEntity});
}

class ItemAuthEntity {
  String? title;
  String? image;

  ItemAuthEntity({this.title, this.image});
}
