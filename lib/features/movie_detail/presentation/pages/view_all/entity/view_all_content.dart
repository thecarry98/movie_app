import '../../../../domain/entities/detail/full_movie_detail_entity.dart';

class ViewAllContent {
  String? title;
  List<ActorListEntity>? listActorListEntity;
  ImagesEntity? imageEntity;

  ViewAllContent({this.title, this.listActorListEntity, this.imageEntity});
}
