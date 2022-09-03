import 'package:dartz/dartz.dart';
import 'package:microfrontend/core/@shared/errors/failures.dart';
import 'package:microfrontend/core/@shared/interfaces/usecase.dart';
import 'package:microfrontend/features/domain/entities/movies_entity.dart';
import 'package:microfrontend/features/domain/repositories/movies_repository.dart';

class GetMoviesUsecase implements UsecaseNoParam<MovieEntity> {
  final MoviesRepository _moviesRepository;

  GetMoviesUsecase(this._moviesRepository);

  @override
  Future<Either<Failure, MovieEntity>> call() async {
    return await _moviesRepository.getMovies();
  }
}
