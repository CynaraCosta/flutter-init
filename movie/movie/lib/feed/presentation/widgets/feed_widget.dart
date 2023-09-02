import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/feed/presentation/cubit/feed_cubit.dart';
import 'package:movie/shared/widgets/default_loading_widget.dart';
import 'package:movie/shared/widgets/default_try_again_widget.dart';

class FeedWidget extends StatelessWidget {
  const FeedWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
            } else if (state is LoadedState) ... {

              ListView.builder(
              itemCount: state.trendingMovies.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  title: Text(state.trendingMovies[index].title),
                ),
              ),
            )
            } else ... {
              Container()
            }
          ],
        );
      },
    );
  }
}
