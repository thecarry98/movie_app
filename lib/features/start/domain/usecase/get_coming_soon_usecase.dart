import '../../../../core/failures/failures.dart';
import '../entities/movie_entity.dart';
import '../repository/start_repositores.dart';
import 'package:dartz/dartz.dart';

class GetComingSoonUsecase {
  final StartRepositories repository;

  GetComingSoonUsecase(this.repository);

  Future<Either<Failure, ListMovie>> call() {
    return repository.getComingSoon();
  }
}
