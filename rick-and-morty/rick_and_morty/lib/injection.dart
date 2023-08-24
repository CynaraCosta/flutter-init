import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'injection.config.dart';

@InjectableInit(asExtension: false)
Future<void> configureDependencies() async => init(GetIt.instance);
