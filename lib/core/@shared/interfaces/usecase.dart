import 'package:dartz/dartz.dart';
import 'package:microfrontend/core/@shared/errors/failures.dart';

abstract class Usecase<T, P> {
  Future<Either<Failure, T>> call(P p);
}

abstract class UsecaseNoParam<T> {
  Future<Either<Failure, T>> call();
}
