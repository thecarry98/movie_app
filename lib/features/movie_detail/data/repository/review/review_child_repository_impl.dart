import 'package:movie_app/features/movie_detail/data/sources/review/review_child_datasource.dart';
import 'package:movie_app/features/movie_detail/domain/entities/review/review_entity.dart';

import 'package:movie_app/core/failures/failures.dart';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../domain/repository/review/review_child_repository.dart';

class ReviewChildRepositoryImpl implements ReviewChildRepository {
  final ReviewChildDataSource reviewChildDataSource;
  ReviewChildRepositoryImpl({required this.reviewChildDataSource});

  @override
  Future<Either<Failure, FullReviewEntity>> getFullReview(String id) async {
    try {
      final fullReview = await reviewChildDataSource.getFullReview(id);

      return Right(fullReview);
    } on Equatable {
      return Left(NoDataFound(message: 'no data'));
    }
  }
}
