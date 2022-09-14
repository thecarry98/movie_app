class SearchMovieEntity {
  String? searchType;
  String? expression;
  List<ResultEntity>? resultEntity;
  SearchMovieEntity({this.searchType, this.expression, this.resultEntity});
}

class ResultEntity {
  String? id;
  String? resultType;
  String? image;
  String? title;
  String? description;
  ResultEntity(
      {this.id, this.resultType, this.image, this.title, this.description});
}
