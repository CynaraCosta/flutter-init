part of 'feed_cubit.dart';

abstract class FeedCubitState extends Equatable {}

class InitialState extends FeedCubitState {
  @override
  List<Object?> get props => [];
}

class LoadingState extends FeedCubitState {
  @override
  List<Object?> get props => [];
}

class LoadedState extends FeedCubitState {
  LoadedState(this.trendingMovies);

  final List<MovieResponse> trendingMovies;

  @override
  List<Object?> get props => [trendingMovies];
}

class ErrorState extends FeedCubitState {
  ErrorState(this.error);
  final String error;
  @override
  List<Object?> get props => [];
}
