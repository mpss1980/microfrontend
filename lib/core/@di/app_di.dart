import 'package:get_it/get_it.dart';
import 'package:microfrontend/core/data/services/http_service_impl.dart';
import 'package:microfrontend/core/domain/services/http_service.dart';
import 'package:microfrontend/features/data/datasources/remote/movies_moviedb_datasource.dart';
import 'package:microfrontend/features/data/datasources/remote/movies_remote_datasource.dart';
import 'package:microfrontend/features/data/repositories/movies_repository_impl.dart';
import 'package:microfrontend/features/domain/repositories/movies_repository.dart';
import 'package:microfrontend/features/domain/usecases/get_movies_usecase.dart';
import 'package:microfrontend/features/presentation/movies_catalog/controllers/movie_controller.dart';

class AppDependencyInjection {
  static initialize() {
    GetIt getIt = GetIt.instance;

    //core
    getIt.registerLazySingleton<HttpService>(() => HttpServiceImpl());

    //datasources
    getIt.registerLazySingleton<MoviesRemoteDataSource>(() => MoviesMovieDbDataSource(getIt()));

    //repositories
    getIt.registerLazySingleton<MoviesRepository>(() => MoviesRepositoryImpl(getIt()));

    //repositories
    getIt.registerLazySingleton<GetMoviesUsecase>(() => GetMoviesUsecase(getIt()));

    //controllers
    getIt.registerLazySingleton<MovieController>(() => MovieController(getIt()));
  }
}
