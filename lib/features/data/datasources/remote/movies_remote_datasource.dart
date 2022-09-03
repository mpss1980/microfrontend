import 'package:microfrontend/features/data/dtos/movie_dto.dart';

abstract class MoviesRemoteDataSource {
  Future<MovieDto> getMovies();
}
