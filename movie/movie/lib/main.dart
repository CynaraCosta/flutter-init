import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie/injection.dart';
import 'package:movie/shared/config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await dotenv.load(fileName: '.env');
  runApp(DevicePreview(builder: (_) {
    return const MovieApp();
  }));
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          print(Config.userKey);
        },
        child: const Text('CLICA BROTHER!'),
      ),
    );
  }
}
