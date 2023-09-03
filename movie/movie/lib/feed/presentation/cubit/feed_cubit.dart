import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie/trending_movies/data/service/trending_movies_response.dart';
import 'package:movie/trending_movies/data/trending_movie_repository.dart';

part 'feed_cubit_state.dart';

class FeedCubit extends Cubit<FeedCubitState> {
  FeedCubit(this.trendingRepository) : super(InitialState());

  final TrendingMovieRepository trendingRepository;

  void getTrendingFeed() async {
    try {
      emit(LoadingState());
      final trendingMovies =
          await trendingRepository.getTrendingMovies('pt-BR');
      emit(LoadedState(trendingMovies.results));
    } on NetworkException {
      emit(ErrorState('Could not fetch trending movies'));
    }
  }
}

class NetworkException implements Exception {}
