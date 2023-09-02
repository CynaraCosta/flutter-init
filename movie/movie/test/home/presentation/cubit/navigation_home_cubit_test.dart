import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie/home/presentation/cubit/navigation_home_cubit.dart';


void main() {
  group('testing the navigation home cubit', () {
    late NavigationHomeCubit sut;

    setUp(() async {
      sut = NavigationHomeCubit();
    });

    test('inital stat is 0', () {
      expect(sut.state, 0);
    });

    blocTest(
      'when onSelectTab expect 0 when state is 0',
      build: () => sut,
      tearDown: () => sut.close(),
      act: (cubit) => cubit.onSelectTab(0),
      expect: () => [0],
    );

    blocTest(
      'when onSelectTab expect 1 when state is 1',
      build: () => sut,
      tearDown: () => sut.close(),
      act: (cubit) => cubit.onSelectTab(1),
      expect: () => [1],
    );

  });
}
