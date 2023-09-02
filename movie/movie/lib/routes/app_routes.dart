import 'package:go_router/go_router.dart';
import 'package:movie/home/presentation/page/home_page.dart';

abstract class AppRoutes {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (_, __) => const HomePage(),
        routes: const [
          
        ]
      )
    ]
  );
}
