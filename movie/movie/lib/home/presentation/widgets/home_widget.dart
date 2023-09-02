import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:movie/feed/presentation/page/feed_page.dart';
import 'package:movie/home/presentation/cubit/navigation_home_cubit.dart';
import 'package:movie/settings/presentation/page/settings_page.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({super.key});

  static final Logger logger = Logger();

  final _pages = {
    const FeedPage():
        const BottomNavigationBarItem(
          icon: Icon(Icons.movie), label: 'Feed'),
    const SettingsPage():
        const BottomNavigationBarItem(
          icon: Icon(Icons.settings), label: 'Settings'),
  };

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationHomeCubit, int>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(
            index: state,
            children: _pages.keys.toList(),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: _pages.values.toList(),
            currentIndex: state,
            onTap: (newIndex) =>
              context.read<NavigationHomeCubit>().onSelectTab(newIndex)
          ),
        );
      },
    );
  }
}
