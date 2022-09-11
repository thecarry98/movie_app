import 'package:movie_app/features/movie_detail/domain/entities/detail/full_movie_detail_entity.dart';

import 'package:movie_app/core/failures/failures.dart';
import 'package:equatable/equatable.dart';
import 'package:dartz/dartz.dart';

import '../../../domain/repository/detail/detail_child_repository.dart';
import '../../sources/detail/detail_child_data_source.dart';

class DetailChildRepositoryImpl implements DetailChildRepository {
  final DetailChildDataSource detailChildDataSource;
  DetailChildRepositoryImpl({required this.detailChildDataSource});
  @override
  Future<Either<Failure, FullMovieDetailEntity>> getFullMovieDetail(
      String id) async {
    try {
      final fullMovie = await detailChildDataSource.getFullMovieDetail(id);

      return Right(fullMovie);
    } on Equatable {
      return Left(
        NoDataFound(message: 'no data'),
      );
    }
  }
}
