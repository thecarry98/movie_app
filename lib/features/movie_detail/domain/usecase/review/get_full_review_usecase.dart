import 'package:movie_app/features/movie_detail/domain/repository/review/review_child_repository.dart';
import 'package:dartz/dartz.dart';
import '../../../../../core/failures/failures.dart';
import '../../entities/review/review_entity.dart';

class GetFullReviewUsecase {
  ReviewChildRepository repository;
  GetFullReviewUsecase(this.repository);
  Future<Either<Failure, FullReviewEntity>> call(String id) {
    return repository.getFullReview(id);
  }
}
