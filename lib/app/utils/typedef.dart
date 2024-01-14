import 'package:dartz/dartz.dart';
import 'package:flutter_movie_getx/app/core/error/failure.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;
