import 'package:flutter/material.dart';
import 'package:movie/trending_movies/data/service/trending_movies_response.dart';

class DetailsMovieInformation extends StatelessWidget {
  const DetailsMovieInformation({
    super.key, 
    required this.movie, 
    required this.height,
    required this.width
  });

  final MovieResponse movie;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * 2/3,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32)
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          movie.title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
