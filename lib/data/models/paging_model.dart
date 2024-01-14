import 'package:flutter_movie_getx/data/models/movie_model.dart';
import 'package:flutter_movie_getx/domain/entities/paging.dart';

class PagingModel extends Paging {
  PagingModel({
    required int totalResults,
    required List<MovieModel> movies,
  }) : super(movies: movies, totalResults: totalResults);

  @override
  factory PagingModel.fromJson(Map<String, dynamic> json) => PagingModel(
      totalResults: json["total_results"],
      // movies: List.from(json["results"].map((x) => MovieModel.fromJson(x))),
      movies: json["results"].map((e) => MovieModel.fromJson(e)).toList());
}
