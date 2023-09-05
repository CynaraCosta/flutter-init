import 'package:flutter/material.dart';
import 'package:movie/shared/extensions/string_image_internet_tmdb.dart';
import 'package:movie/trending_movies/data/service/trending_movies_response.dart';

class DetailsMovieBackgroundPosterWidget extends StatelessWidget {
  const DetailsMovieBackgroundPosterWidget({super.key, required this.movie});

  final MovieResponse movie;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 1 / 3,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  movie.backdropPath.getInternetImageTMDB()
                ),
              fit: BoxFit.cover)
      )
    );
  }
}