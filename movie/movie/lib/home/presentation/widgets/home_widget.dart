import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:movie/trending_movies/domain/trending_movie_interactor.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  static final Logger logger = Logger();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: TextButton(
          onPressed: () {
            final TrendingMovieInteractor interactor = GetIt.I.get();
            interactor.fetchTrendingMovies('pt_BR');
            // interactor.fetchTrendingMovies('en-US');
          },
          child: const Text('CLICA BROTHER!'),
        ),
      ),
    );
  }
}
