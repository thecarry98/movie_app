import 'package:movie_app/features/start/data/sources/search_movie_remote_datasource.dart';
import 'package:movie_app/features/start/domain/entities/search_movie/search_movie_entity.dart';

import 'package:movie_app/core/failures/failures.dart';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../domain/repository/search_reposities.dart';

class SearchRepositiesImpl implements SearchReposities {
  final SearchMovieRemoteDataSource searchMovieDataSource;
  SearchRepositiesImpl({required this.searchMovieDataSource});
  @override
  Future<Either<Failure, SearchMovieEntity>> searchMovie(
      String movieName) async {
    try {
      final movies = await searchMovieDataSource.getMovieSearch(movieName);
      return Right(movies);
    } on Equatable {
      return Left(
        NoDataFound(message: 'no data'),
      );
    }
  }
}
