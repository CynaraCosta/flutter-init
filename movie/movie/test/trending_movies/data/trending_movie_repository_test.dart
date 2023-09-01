import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movie/trending_movies/data/service/trending_movie_service.dart';
import 'package:movie/trending_movies/data/service/trending_movies_response.dart';
import 'package:movie/trending_movies/data/trending_movie_repository.dart';

void main() {
  group('trending movie repository tests', () {
    late TrendingMovieRepository repository;
    late TrendingMovieService service;

    setUp(() {
      service = TrendingMovieServiceMock();
      repository = TrendingMovieRepositoryImpl(service);
    });

    test(
        'GIVEN a service '
        'WHEN request api data with language pt-BR'
        'THEN get api response ', () async {
      final responseTrendingMovieMock = TrendingMovieApiResponseMock();
      when(() => service.getTrendingMovies())
          .thenAnswer((_) async => responseTrendingMovieMock);
      expect(await repository.getTrendingMovies('pt-BR'),
          responseTrendingMovieMock);
    });
  });
}

class TrendingMovieServiceMock extends Mock implements TrendingMovieService {}

class TrendingMovieApiResponseMock extends Mock
    implements TrendingMovieApiResponse {}
