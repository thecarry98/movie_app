import 'package:movie_app/features/start/domain/entities/movie_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/failures/failures.dart';

abstract class StartRepositories {
  Future<Either<Failure, ListMovie>> getNowShowing();
  Future<Either<Failure, ListMovie>> getComingSoon();
}
