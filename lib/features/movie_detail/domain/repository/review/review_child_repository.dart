import '../../../../../core/failures/failures.dart';
import 'package:dartz/dartz.dart';

import '../../entities/review/review_entity.dart';

abstract class ReviewChildRepository {
  Future<Either<Failure, FullReviewEntity>> getFullReview(String id);
}
