import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movie/feed/presentation/cubit/feed_cubit.dart';
import 'package:movie/trending_movies/data/trending_movie_repository.dart';
import '../../../mocks/movie_list_mock.dart';
import '../../../mocks/trending_movie_repository_mock.dart';

void main() {
  group('testing the feed cubit', () {
    late TrendingMovieRepository trendingMovieRepository;

    const trendingMovies = movieList;

    setUp(() {
      trendingMovieRepository = TrendingMovieRepositoryMock();
    });

    test('initial state', () async {
      FeedCubit cubit = FeedCubit(trendingMovieRepository);
      expect(cubit.state, isA<InitialState>());
    });

    blocTest<FeedCubit, FeedCubitState>(
      'emits Loaded when sucessful',
      build: () {
        when(() => trendingMovieRepository.getTrendingMovies('pt-BR'))
            .thenAnswer((_) async => trendingMovies);
        return FeedCubit(trendingMovieRepository);
      },
      act: (FeedCubit cubit) => cubit.getTrendingFeed(),
      expect: () => [
        LoadingState(),
        LoadedState(trendingMovies.results)
        ],
    );

    blocTest('emits Error when unsucessful',
        build: () {
          when(() => trendingMovieRepository.getTrendingMovies('pt-BR'))
              .thenThrow(NetworkException());
          return FeedCubit(trendingMovieRepository);
        },
        act: (FeedCubit cubit) => cubit.getTrendingFeed(),
        expect: () =>
            [
              LoadingState(), 
              ErrorState('Could not fetch trending movies')]
            );
  });
}
