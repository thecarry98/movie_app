import '../../../../../core/failures/failures.dart';
import '../../entities/detail/full_movie_detail_entity.dart';
import 'package:dartz/dartz.dart';

abstract class DetailChildRepository {
  Future<Either<Failure, FullMovieDetailEntity>> getFullMovieDetail(String id);
}
