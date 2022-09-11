import 'package:movie_app/features/movie_detail/domain/entities/auth/movie_detail_auth_entity.dart';

import 'package:movie_app/core/failures/failures.dart';
import 'package:equatable/equatable.dart';

import 'package:dartz/dartz.dart';

import '../../../domain/repository/auth/movie_detail_auth_repository.dart';
import '../../sources/auth/movie_detail_data_source.dart';

class MovieDetailAuthRepositoryImpl extends MovieDetailAuthRepository {
  final MovieDetailDataSource movieDetailDataSource;
  MovieDetailAuthRepositoryImpl(this.movieDetailDataSource);
  @override
  Future<Either<Failure, MovieDetailAuthEntity>> getMovieDetailAuth(
      String id) async {
    // TODO: implement getFullCast
    try {
      final movieDetailAuth =
          await movieDetailDataSource.getMovieDetailAuth(id);
      return Right(movieDetailAuth);
    } on Equatable {
      return Left(
        NoDataFound(message: 'sdf'),
      );
    }
  }
}
