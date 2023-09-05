import 'package:flutter/material.dart';
import 'package:movie/details_movie/presentation/widgets/details_movie_background_poster_widget.dart';
import 'package:movie/details_movie/presentation/widgets/details_movie_overlapping_widget.dart';
import 'package:movie/trending_movies/data/service/trending_movies_response.dart';

class DetailsMovieBuildBackgroundWidget extends StatelessWidget {
  const DetailsMovieBuildBackgroundWidget({super.key, required this.movie});
  final MovieResponse movie;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          DetailsMovieBackgroundPosterWidget(movie: movie),
          Positioned(
            top: height * 1/3.35,
            child: DetailsMovieOverlappingWidget(movie: movie)
          )
        ],
      );
  }
}