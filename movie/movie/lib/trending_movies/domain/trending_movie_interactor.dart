import 'package:injectable/injectable.dart';
import 'package:movie/trending_movies/data/service/trending_movies_response.dart';
import 'package:movie/trending_movies/data/treding_movie_repository.dart';

abstract class TrendingMovieInteractor {
  Future<TrendingMovieApiResponse> fetchTrendingMovies(String language);
}

@Injectable(as: TrendingMovieInteractor)
class TrendingMovieInteractorImpl implements TrendingMovieInteractor {
  const TrendingMovieInteractorImpl(this._repository);
  final TrendingMovieRepository _repository;

  @override
  Future<TrendingMovieApiResponse> fetchTrendingMovies(String language) =>
      _repository.getTrendingMovies(language);
}
