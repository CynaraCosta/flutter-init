import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:movie/home/presentation/page/home_page.dart';
import 'package:movie/settings/presentation/page/settings_page.dart';
import 'package:movie/trending_movies/domain/trending_movie_interactor.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({super.key});

  static final Logger logger = Logger();

  final _pages = {
    const HomePage():
        const BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Feed'),
    const SettingsPage(): const BottomNavigationBarItem(
        icon: Icon(Icons.settings), label: 'Settings')
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            final TrendingMovieInteractor interactor = GetIt.I.get();
            interactor.fetchTrendingMovies('pt-BR');
            // interactor.fetchTrendingMovies('en-US');
          },
          child: const Text('CLICA BROTHER!'),
        ),
      ),
    );
  }
}
