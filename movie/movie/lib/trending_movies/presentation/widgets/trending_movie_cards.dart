import 'package:flutter/material.dart';
import 'package:movie/shared/extensions/string_image_internet_tmdb.dart';
import 'package:movie/trending_movies/data/service/trending_movies_response.dart';

class TrendingMovieCards extends StatelessWidget {
  const TrendingMovieCards({super.key, required this.movie});

  final MovieResponse movie;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              movie.posterPath.getInternetImageTMDB()
            ),
          ),
        ),
      ),
    );
  }
}
