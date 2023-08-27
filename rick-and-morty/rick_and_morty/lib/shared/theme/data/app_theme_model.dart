import 'package:flutter/material.dart';
import 'package:rick_and_morty/shared/theme/data/app_theme.dart';

class AppThemeModel {
  AppThemeModel({
    required this.theme, 
    required this.themeData
  });

  final AppTheme theme;
  final ThemeData themeData;
}
