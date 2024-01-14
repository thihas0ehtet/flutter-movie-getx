import 'package:dartz/dartz.dart';
import 'package:flutter_movie_getx/app/core/error/failure.dart';
import 'package:flutter_movie_getx/domain/entities/movie.dart';
import 'package:flutter_movie_getx/domain/repositories/movie_repository.dart';

class FetchMoviesCase {
  final MovieRepository _repo;
  FetchMoviesCase(this._repo);

  Future<Either<Failure, List<MovieEntity>>> execute() {
    return _repo.fetchMovies();
  }
}
