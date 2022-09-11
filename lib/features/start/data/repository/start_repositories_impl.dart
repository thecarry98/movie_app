import 'package:movie_app/features/start/domain/entities/movie_entity.dart';

import 'package:movie_app/core/failures/failures.dart';
import 'package:equatable/equatable.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repository/start_repositores.dart';
import '../models/list_items.dart';
import '../sources/movie_start_remote_datasource.dart';

class StartRepositoriesImpl implements StartRepositories {
  final MovieStartRemoteDataSource movieStartRemoteDataSource;

  StartRepositoriesImpl({required this.movieStartRemoteDataSource});

  @override
  Future<Either<Failure, ListMovie>> getComingSoon() async {
    try {
      final movies = await movieStartRemoteDataSource.getComingSoon();
      return Right(movies);
    } on Equatable {
      return Left(
        NoDataFound(message: 'no data get coming soon'),
      );
    }
  }

  @override
  Future<Either<Failure, ListMovie>> getNowShowing() async {
    try {
      final movies = await movieStartRemoteDataSource.getNowShowing();
      return Right(movies);
    } on Equatable {
      return Left(
        NoDataFound(message: 'sdf'),
      );
    }
  }
}
