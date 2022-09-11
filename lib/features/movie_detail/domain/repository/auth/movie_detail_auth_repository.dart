import 'package:movie_app/features/movie_detail/domain/entities/auth/movie_detail_auth_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/failures/failures.dart';
import '../../../../../core/failures/failures.dart';

abstract class MovieDetailAuthRepository {
  Future<Either<Failure, MovieDetailAuthEntity>> getMovieDetailAuth(String id);
  // Future<Either<Failure, FullCastEntity>> getFullCast(String id);
}
