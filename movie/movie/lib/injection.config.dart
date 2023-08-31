// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:movie/network/network_module.dart' as _i7;
import 'package:movie/trending_movies/data/service/trending_movie_service.dart'
    as _i4;
import 'package:movie/trending_movies/data/treding_movie_repository.dart'
    as _i5;
import 'package:movie/trending_movies/domain/trending_movie_interactor.dart'
    as _i6;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final networkModule = _$NetworkModule();
  gh.factory<_i3.Interceptor>(
    () => networkModule.providePrettyLogger(),
    instanceName: 'PrettyLogger',
  );
  gh.factory<String>(
    () => networkModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.singleton<_i3.Dio>(networkModule.provideDio(
    gh<String>(instanceName: 'BaseUrl'),
    gh<_i3.Interceptor>(instanceName: 'PrettyLogger'),
  ));
  gh.factory<_i4.TrendingMovieService>(
      () => _i4.TrendingMovieServiceImpl(gh<_i3.Dio>()));
  gh.factory<_i5.TrendingMovieRepository>(
      () => _i5.TrendingMovieRepositoryImpl(gh<_i4.TrendingMovieService>()));
  gh.factory<_i6.TrendingMovieInteractor>(
      () => _i6.TrendingMovieInteractorImpl(gh<_i5.TrendingMovieRepository>()));
  return getIt;
}

class _$NetworkModule extends _i7.NetworkModule {}
