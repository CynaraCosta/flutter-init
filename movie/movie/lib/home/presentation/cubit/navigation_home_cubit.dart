import 'package:bloc/bloc.dart';

class NavigationHomeCubit extends Cubit<int> {
  NavigationHomeCubit() : super(0);

  void onSelectTab(int index) => emit(index);
}
