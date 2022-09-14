import 'package:movie_app/features/start/domain/entities/search_movie/search_movie_entity.dart';

import 'package:movie_app/core/failures/failures.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repository/search_reposities.dart';

class SearchRepositiesImpl implements SearchReposities {
  @override
  Future<Either<Failure, SearchMovieEntity>> searchMovie(String movieName) {
    // TODO: implement searchMovie
    throw UnimplementedError();
  }
}
