import 'package:movie_app/features/movie_detail/domain/entities/detail/full_movie_detail_entity.dart';
import 'package:movie_app/features/movie_detail/domain/repository/detail/detail_child_repository.dart';
import 'package:dartz/dartz.dart';
import '../../../../../core/failures/failures.dart';

class GetFullMovieDetailUsecase {
  DetailChildRepository repository;
  GetFullMovieDetailUsecase(this.repository);

  Future<Either<Failure, FullMovieDetailEntity>> call(String id) {
    return repository.getFullMovieDetail(id);
  }
}
