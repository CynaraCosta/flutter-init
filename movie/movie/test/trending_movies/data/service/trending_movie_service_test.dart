import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movie/shared/config.dart';
import 'package:movie/trending_movies/data/service/trending_movie_service.dart';
import 'package:movie/trending_movies/data/service/trending_movies_response.dart';

import '../../../mocks/dio_mock.dart';
import '../../../mocks/movie_response_mock.dart';
import '../../../mocks/response_mock.dart';

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  final String apiKey = Config.apiKey;
  group('trending movie service tests', () {
    late Dio client;
    late TrendingMovieService service;

    setUp(() async {
      client = DioMock();
      service = TrendingMovieServiceImpl(client);
    });

    test(
        'GIVEN http client '
        'WHEN request trending movie with pt-BR language '
        'THEN get valid answer ', () async {
      final response = ResponseMock();
      final dynamic mockResponse = jsonDecode(movieResponseMock);

      when(() => response.statusCode).thenReturn(200);
      when(() => response.data).thenReturn(mockResponse);
      when(() => client.get('trending/movie/day',
              queryParameters: {'language': 'pt-BR', 'api_key': apiKey}))
          .thenAnswer((_) async => response);
      var result = await service.getTrendingMovies();
      expect(result.page, 1);
      expect(result, isA<TrendingMovieApiResponse>());
      expect(result.results, isA<List<MovieResponse>>());
    });

    test(
        'GIVEN http client '
        'WHEN request trending movie with pt-BR language '
        'THEN get 404 and exception ', () async {
      final response = ResponseMock();
      // fake call
      when(() => response.statusCode).thenReturn(404);
      when(() => client.get('trending/movie/day',
              queryParameters: {'language': 'pt-BR', 'api_key': apiKey}))
          .thenAnswer((_) async => response);
      expect(() => service.getTrendingMovies(), throwsA(isA<NetworkException>()));
    });
  });
}
