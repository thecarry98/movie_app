class FullReviewEntity {
  String? imDbId;
  List<ItemReviewEntity>? itemReviewEntity;

  FullReviewEntity({this.imDbId, this.itemReviewEntity});
}

class ItemReviewEntity {
  String? username;
  String? userUrl;
  String? date;
  String? rate;
  String? content;

  ItemReviewEntity(
      {this.username, this.userUrl, this.date, this.rate, this.content});
}
