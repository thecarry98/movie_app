import 'package:movie_app/features/start/domain/entities/search_movie/search_movie_entity.dart';

import '../../../../core/failures/failures.dart';
import '../repository/search_reposities.dart';
import 'package:dartz/dartz.dart';

class SearchMovieUsecase {
  final SearchReposities repository;
  SearchMovieUsecase(this.repository);

  Future<Either<Failure, SearchMovieEntity>> call(String movieName) {
    return repository.searchMovie(movieName);
  }
}
