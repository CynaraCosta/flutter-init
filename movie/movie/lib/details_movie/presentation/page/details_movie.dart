import 'package:flutter/material.dart';
import 'package:movie/details_movie/presentation/widgets/details_movie_information.dart';
import 'package:movie/shared/extensions/string_image_internet_tmdb.dart';
import 'package:movie/trending_movies/data/service/trending_movies_response.dart';

class DetailsMovie extends StatelessWidget {
  const DetailsMovie({super.key, required this.movie});

  final MovieResponse movie;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      // backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
              height: height * 1 / 3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          movie.backdropPath.getInternetImageTMDB()),
                      fit: BoxFit.cover))),
          Padding(
              padding: EdgeInsets.only(top: height * 1 / (3.33)),
              child: DetailsMovieInformation(
                movie: movie, 
                height: height, 
                width: width
              )),
        ],
      ),
    );
  }
}
