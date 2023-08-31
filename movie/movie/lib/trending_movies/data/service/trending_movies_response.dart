
import 'package:equatable/equatable.dart';

class MovieResponse extends Equatable {
  const MovieResponse(
      this.adult,
      this.backdropPath,
      this.id,
      this.title,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.posterPath,
      this.mediaType,
      this.genreIds,
      this.popularity,
      this.releaseDate,
      this.video,
      this.voteAverage,
      this.voteCount);

  factory MovieResponse.fromJson(Map<String, dynamic> json) => 
  MovieResponse(
    json['adult'] as bool,
    json['backdrop_path'] as String,
    json['id'] as int,
    json['title'] as String,
    json['original_language'] as String,
    json['original_title'] as String,
    json['overview'] as String,
    json['poster_path'] as String,
    json['media_type'] as String,
    json['genre_ids'] as List<dynamic>,
    json['popularity'] as double,
    json['release_date'] as String,
    json['video'] as bool,
    json['vote_average'] as double,
    json['vote_count'] as int,
  );

  final bool adult;
  final String backdropPath;
  final int id;
  final String title;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final String posterPath;
  final String mediaType;
  final List<dynamic> genreIds;
  final double popularity;
  final String releaseDate;
  final bool video;
  final double voteAverage;
  final int voteCount;

  @override
  List<Object?> get props => [
    adult, backdropPath, id, title, originalLanguage, originalTitle,
    overview, posterPath, mediaType, genreIds, popularity, releaseDate,
    video, voteAverage, voteCount
    ];
}

class TrendingMovieApiResponse extends Equatable {
  const TrendingMovieApiResponse(this.page, this.results);

  factory TrendingMovieApiResponse.fromJson(Map<String, dynamic> json) =>
      TrendingMovieApiResponse(
          json['page'] as int,
          (json['results'] as List<dynamic>)
              .map((movieJson) => MovieResponse.fromJson(movieJson))
              .toList());

  final int page;
  final List<MovieResponse> results;

  @override
  List<Object?> get props => [page, results];
}
