import 'package:dartz/dartz.dart';
import 'package:microfrontend/core/@shared/errors/exceptions.dart';
import 'package:microfrontend/core/@shared/errors/failures.dart';
import 'package:microfrontend/features/data/datasources/remote/movies_remote_datasource.dart';
import 'package:microfrontend/features/domain/entities/movies_entity.dart';
import 'package:microfrontend/features/domain/repositories/movies_repository.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  final MoviesRemoteDataSource dataSource;

  MoviesRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, MovieEntity>> getMovies() async {
    try {
      final response = await dataSource.getMovies();
      return Right(response);
    } on RemoteException {
      return Left(Failure());
    }
  }
}
