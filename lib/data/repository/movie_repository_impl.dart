import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_movie_getx/app/core/error/exception.dart';
import 'package:flutter_movie_getx/app/core/error/failure.dart';
import 'package:flutter_movie_getx/app/utils/typedef.dart';
import 'package:flutter_movie_getx/data/datasource/movie_remote_data_source.dart';
import 'package:flutter_movie_getx/domain/entities/movie.dart';
import 'package:flutter_movie_getx/domain/repositories/movie_repository.dart';

class MovieRepositoryIml extends MovieRepository {
  final MovieRemoteDataSource movieRemoteDataSource;

  MovieRepositoryIml({required this.movieRemoteDataSource});

  @override
  ResultFuture<List<MovieEntity>> fetchMovies() async {
    try {
      final result = await movieRemoteDataSource.fetchMovies();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException catch (error) {
      return Left(ServerFailure(error.message ?? "An error has occurred"));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
