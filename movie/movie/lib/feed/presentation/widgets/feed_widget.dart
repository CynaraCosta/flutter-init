import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie/feed/presentation/cubit/feed_cubit.dart';
import 'package:movie/shared/widgets/default_loading_widget.dart';
import 'package:movie/shared/widgets/default_try_again_widget.dart';
import 'package:movie/trending_movies/presentation/widgets/trending_movie_cards.dart';

class FeedWidget extends StatelessWidget {
  const FeedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return BlocBuilder<FeedCubit, FeedCubitState>(
      builder: (context, state) {
        return Stack(
          children: [
            if (state is InitialState || state is LoadingState) ...{
              const Center(child: DefaultLoadingWidget())
            } else if (state is ErrorState) ...{
              const Center(
                child: DefaultTryAgainWidget(),
              )
            } else if (state is LoadedState) ...{
              Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 64,
                    ),

                     Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        style:const TextStyle(color: Colors.white),
                        textAlign: TextAlign.start,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.fromLTRB(
                            16, 0, 0, 0
                          ),
                          filled: true,
                          fillColor: Colors.grey[400],
                          suffixIconColor: Colors.white,
                          suffixIcon: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16), 
                            child: Icon(Icons.search)
                            ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(32)),
                            borderSide: BorderSide.none
                          ),
                          hintText: 'Search',
                          hintStyle: const TextStyle(color: Colors.white)
                        ),
                      ),
                    ),

                    ListTile(
                      title: Text(
                        'Trending Movies',
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: Colors.white, 
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          )
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.5,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: state.trendingMovies.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(16, 10, 16, 8),
                            child: TrendingMovieCards(
                                movie: state.trendingMovies[index]),
                          );
                        }),
                    ),
                    
                  ],
                ),
              )
            } else ...{
              Container()
            }
          ],
        );
      },
    );
  }
}
