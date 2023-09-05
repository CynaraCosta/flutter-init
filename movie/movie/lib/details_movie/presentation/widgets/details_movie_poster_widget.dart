import 'package:flutter/material.dart';
import 'package:movie/shared/extensions/string_image_internet_tmdb.dart';
import 'package:movie/trending_movies/data/service/trending_movies_response.dart';

class DetailsMoviePosterWidget extends StatelessWidget {
  const DetailsMoviePosterWidget({super.key, required this.movie});

  final MovieResponse movie;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.2,
      width: width * 0.29,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          image: DecorationImage(
              image: NetworkImage(movie.posterPath.getInternetImageTMDB()))),
    );
  }
}
