import '../../../../core/failures/failures.dart';
import '../entities/search_movie/search_movie_entity.dart';
import 'package:dartz/dartz.dart';

abstract class SearchReposities {
  Future<Either<Failure, SearchMovieEntity>> searchMovie(String movieName);
}
