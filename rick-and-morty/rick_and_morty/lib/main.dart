import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/home/presentation/page/home_page.dart';
import 'package:rick_and_morty/injection.dart';
import 'package:rick_and_morty/shared/theme/application_theme.dart';
import 'package:rick_and_morty/shared/theme/data/app_theme.dart';

// flutter pub run build_runner build

void main() async {
  // usa essa linha embaixo, quando chama async na main, pq precisa chamar
  //codigo nativo antes de chamar o runApp
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(
    DevicePreview(
      builder: (_) {
        return const RickAndMortyApp();
      },
    ),
  );
}

class RickAndMortyApp extends StatelessWidget {
  const RickAndMortyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ApplicationTheme.themes[AppTheme.halloween]?.themeData,
      home: const HomePage(),
    );
  }
}
