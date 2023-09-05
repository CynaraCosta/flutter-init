import 'package:flutter/material.dart';
import 'package:movie/trending_movies/data/service/trending_movies_response.dart';

class DetailsMovieOverlappingWidget extends StatelessWidget {
  const DetailsMovieOverlappingWidget({super.key, required this.movie});

  final MovieResponse movie;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height * 2 / 3,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32), topRight: Radius.circular(32))),
    );
  }
}
