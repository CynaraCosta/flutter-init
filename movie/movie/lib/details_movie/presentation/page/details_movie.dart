import 'package:flutter/material.dart';
import 'package:movie/details_movie/presentation/widgets/details_movie_build_background_widget.dart';
import 'package:movie/details_movie/presentation/widgets/details_movie_overview_widget.dart';
import 'package:movie/details_movie/presentation/widgets/details_movie_title_poster_widget.dart';
import 'package:movie/shared/buttons/button_factory.dart';
import 'package:movie/shared/buttons/buttons_type_enum.dart';
import 'package:movie/trending_movies/data/service/trending_movies_response.dart';

class DetailsMovie extends StatelessWidget {
  const DetailsMovie({super.key, required this.movie});

  final MovieResponse movie;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        clipBehavior: Clip.none,
        padding: EdgeInsets.zero,
        children: [
          DetailsMovieBuildBackgroundWidget(movie: movie),
          DetailsMovieTitlePosterWidget(movie: movie),
          SizedBox(height: height * 0.03),
          DetailsMovieOverview(movie: movie),
          SizedBox(height: height * 0.03),
          ButtonFactory.draw(ButtonStylesEnum.ingressos).build()
        ],
      )
    );
  }
}

