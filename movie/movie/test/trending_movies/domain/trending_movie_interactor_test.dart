import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movie/trending_movies/data/trending_movie_repository.dart';
import 'package:movie/trending_movies/domain/trending_movie_interactor.dart';

import '../mocks/trending_movie_api_response_mock.dart';
import '../mocks/trending_movie_repository_mock.dart';

void main() {
  group('trending movie interactor tests', () {
    late TrendingMovieInteractor interactor;
    late TrendingMovieRepository repository;

    setUp(() async {
      repository = TrendingMovieRepositoryMock();
      interactor = TrendingMovieInteractorImpl(repository);
    });

    test(
        'GIVEN a trending movie interactor'
        'WHEN get trending movie with language pt-BR'
        'THEN return response properly', () async {
      final response = TrendingMovieApiResponseMock();
      when(() => repository.getTrendingMovies('pt-BR'))
          .thenAnswer((_) async => response);
      expect(await interactor.fetchTrendingMovies('pt-BR'), response);
    });
  });
}




