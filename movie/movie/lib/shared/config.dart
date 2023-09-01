import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  static String apiKey =
      dotenv.get('API_KEY', fallback: 'API_KEY not found').toString();
}

// https://api.themoviedb.org/3/trending/movie/day?language=pt-BR&api_key=
// https://api.themoviedb.org/3/tv/top_rated?api_key=



