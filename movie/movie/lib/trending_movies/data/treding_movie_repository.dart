import 'package:injectable/injectable.dart';
import 'package:movie/trending_movies/data/service/trending_movie_service.dart';
import 'package:movie/trending_movies/data/service/trending_movies_response.dart';

abstract class TrendingMovieRepository {
  Future<TrendingMovieApiResponse> getTrendingMovies(String language);
}

@Injectable(as: TrendingMovieRepository)
class TrendingMovieRepositoryImpl implements TrendingMovieRepository {
  const TrendingMovieRepositoryImpl(this._service);
  final TrendingMovieService _service;

  @override
  Future<TrendingMovieApiResponse> getTrendingMovies(String language) =>
    _service.getTrendingMovies(language);
  
}
