import 'package:movie_app/features/movie_detail/domain/repository/auth/movie_detail_auth_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/failures/failures.dart';
import '../../entities/auth/movie_detail_auth_entity.dart';

class GetMovieDetailAuthUsecase {
  final MovieDetailAuthRepository repository;
  GetMovieDetailAuthUsecase(this.repository);
  Future<Either<Failure, MovieDetailAuthEntity>> call(String id) async {
    return repository.getMovieDetailAuth(id);
  }
}
