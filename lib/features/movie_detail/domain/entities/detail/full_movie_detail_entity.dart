class FullMovieDetailEntity {
  String? id;
  String? plot;
  ImagesEntity? imageEntity;
  List<ActorListEntity>? listActorListEntity;
  TrailerEntity? trailerEntity;

  FullMovieDetailEntity(
      {this.id,
      this.plot,
      this.imageEntity,
      this.listActorListEntity,
      this.trailerEntity});
}

class ActorListEntity {
  String? id;
  String? image;
  String? name;
  String? asCharacter;

  ActorListEntity({this.id, this.image, this.name, this.asCharacter});
}

class ImagesEntity {
  String? imDbId;
  List<ItemsImageEntity>? itemsImageEntity;

  ImagesEntity({this.imDbId, this.itemsImageEntity});
}

class ItemsImageEntity {
  String? title;
  String? image;

  ItemsImageEntity({this.title, this.image});
}

class TrailerEntity {
  String? imDbId;
  String? videoId;
  String? link;

  TrailerEntity({this.imDbId, this.videoId, this.link});
}
