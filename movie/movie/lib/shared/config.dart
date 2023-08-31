import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  static String userKey =
      dotenv.get('USER_KEY', fallback: 'USER_KEY not found');
}
