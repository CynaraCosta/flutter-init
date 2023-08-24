import 'package:flutter/material.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/loading.dart';

const String homePage = '/login';
const String chooseLocation = '/location';
const String loading = '/';

Route <dynamic> controller(RouteSettings settings) {
  final args = settings.arguments as Map<dynamic, dynamic>;
  switch (settings.name) {
    case homePage:
      return MaterialPageRoute(builder: (context) => Home(data: args));
    case chooseLocation:
      return MaterialPageRoute(builder: (context) => ChooseLocation());
    case loading:
      return MaterialPageRoute(builder: (context) => Loading());
    default:
    throw('This route name does not exist');
  }
}