import 'package:flutter/material.dart';
import 'package:movie/details_movie/presentation/widgets/details_movie_poster_widget.dart';
import 'package:movie/trending_movies/data/service/trending_movies_response.dart';

class DetailsMovieTitlePosterWidget extends StatelessWidget {
  const DetailsMovieTitlePosterWidget({super.key, required this.movie});
  final MovieResponse movie;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
      child: Row(
        children: [
          DetailsMoviePosterWidget(movie: movie),
          SizedBox(width: width * 0.09),
          Expanded(
            child: Column(
              children: [
                Text(
                  movie.title,
                  softWrap: true,
                  style:
                    const TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                ),
                SizedBox(height: height * 0.01),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.grey[400],
                    ),
                    SizedBox(width: width * 0.02),
                    Text(
                      movie.releaseDate,
                      style: TextStyle(fontSize: 14, color: Colors.grey[400]),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
