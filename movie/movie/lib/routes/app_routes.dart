import 'package:go_router/go_router.dart';
import 'package:movie/details_movie/presentation/page/details_movie.dart';
import 'package:movie/home/presentation/page/home_page.dart';
import 'package:movie/trending_movies/data/service/trending_movies_response.dart';

abstract class AppRoutes {
  static GoRouter router = GoRouter(routes: [
    GoRoute(
        path: '/',
        name: 'home',
        builder: (_, __) => const HomePage(),
        routes: <RouteBase>[
          GoRoute(
              path: 'details',
              name: 'details_movie',
              builder: (context, state) {
                MovieResponse movie = state.extra as MovieResponse;
                return DetailsMovie(movie: movie);
              })
        ])
  ]);
}
