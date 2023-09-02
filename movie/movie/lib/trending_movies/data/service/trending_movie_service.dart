import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movie/shared/config.dart';
import 'package:movie/trending_movies/data/service/trending_movies_response.dart';

abstract class TrendingMovieService {
  Future<TrendingMovieApiResponse> getTrendingMovies(
      [String language = 'pt-BR']);
}

@Injectable(as: TrendingMovieService)
class TrendingMovieServiceImpl implements TrendingMovieService {
  TrendingMovieServiceImpl(this._client);
  final Dio _client;
  final String apiKey = Config.apiKey;

  @override
  Future<TrendingMovieApiResponse> getTrendingMovies(
      [String language = 'pt-BR']) async {

    final response = await _client.get('trending/movie/day',
        queryParameters: {'language': language, 'api_key': apiKey});

    await Future.delayed(const Duration(seconds: 2));

    if (response.statusCode == 200) {
      return TrendingMovieApiResponse.fromJson(response.data);
    }

    throw const HttpException('Fail to get trending movies');
  }
}
