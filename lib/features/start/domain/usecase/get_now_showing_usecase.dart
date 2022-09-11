import 'package:movie_app/features/start/domain/entities/movie_entity.dart';
import 'package:movie_app/features/start/domain/repository/start_repositores.dart';

import '../../../../core/failures/failures.dart';
import 'package:dartz/dartz.dart';

class GetNowShowingUsecase {
  final StartRepositories repository;
  GetNowShowingUsecase(this.repository);

  Future<Either<Failure, ListMovie>> call() async {
    return repository.getNowShowing();
  }
}
