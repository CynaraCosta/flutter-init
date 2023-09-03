import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:movie/feed/presentation/cubit/feed_cubit.dart';
import 'package:movie/feed/presentation/widgets/feed_widget.dart';
import 'package:movie/trending_movies/data/trending_movie_repository.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FeedCubit(
        GetIt.I.get<TrendingMovieRepository>()
      )..getTrendingFeed(),
      child: const FeedWidget(),
    );
  }
}
