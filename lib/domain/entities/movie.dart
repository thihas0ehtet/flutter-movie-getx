import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final bool adult, video;
  final List<int> genreIds;
  final int id, voteCount;
  final String backdropPath,
      originalLanguage,
      originalTitle,
      overview,
      posterPath,
      title;
  final DateTime releaseDate;
  final double popularity, voteAverage;

  const MovieEntity({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  @override
  List<Object?> get props => [
        adult,
        backdropPath,
        genreIds,
        id,
        originalLanguage,
        originalTitle,
        overview,
        popularity,
        posterPath,
        releaseDate,
        title,
        video,
        voteAverage,
        voteCount,
      ];
}
