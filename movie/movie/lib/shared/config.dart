import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  static String userKey =
      dotenv.get('USER_KEY', fallback: 'USER_KEY not found').toString();
}

// https://api.themoviedb.org/3/trending/movie/day?language=pt-BR&user_key=
// https://api.themoviedb.org/3/tv/top_rated?user_key=



