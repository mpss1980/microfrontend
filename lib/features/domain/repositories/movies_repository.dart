import 'package:dartz/dartz.dart';
import 'package:microfrontend/core/@shared/errors/failures.dart';
import 'package:microfrontend/features/domain/entities/movies_entity.dart';

abstract class MoviesRepository {
  Future<Either<Failure, MovieEntity>> getMovies();
}
