import 'package:flutter_movie_getx/data/datasource/movie_remote_data_source.dart';
import 'package:flutter_movie_getx/data/repository/movie_repository_impl.dart';
import 'package:get/get.dart';

class DependencyCreator {
  static init() {
    Get.lazyPut(() => MovieRemoteDataSourceImpl());
    Get.lazyPut(() =>
        MovieRepositoryIml(movieRemoteDataSource: MovieRemoteDataSourceImpl()));
  }
}
