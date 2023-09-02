import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/home/presentation/cubit/navigation_home_cubit.dart';
import 'package:movie/home/presentation/widgets/home_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavigationHomeCubit(),
      child: HomeWidget(),
    );
  }
}
