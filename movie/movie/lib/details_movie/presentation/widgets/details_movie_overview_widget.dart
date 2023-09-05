import 'package:flutter/material.dart';
import 'package:movie/trending_movies/data/service/trending_movies_response.dart';

class DetailsMovieOverview extends StatelessWidget {
  const DetailsMovieOverview({super.key, required this.movie});

  final MovieResponse movie;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.fromLTRB(32,0,32,0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Overview',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          ),
          SizedBox(height: height * 0.01),
          Text(
            movie.overview
          ),
        ],
      ),
    );
  }
}
