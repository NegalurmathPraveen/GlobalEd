import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';

import '../src/home/data/data_source/home_local_data_source.dart';
import '../src/home/data/data_source/home_local_data_source_impl.dart';
import '../src/home/data/repository/home_repository_impl.dart';
import '../src/home/domain/repository/home_repository.dart';
import '../src/home/domain/usecases/get_home_screen_data_usecase.dart';
import '../src/home/presentation/cubit/home_cubit.dart';

final getIt = GetIt.instance;

Future<void> initApp() async {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  getIt
    ..registerFactory(() => HomeCubit(getIt()))
    ..registerFactory(() => GetHomeDataUseCase(getIt()))
    ..registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(getIt()))
    ..registerLazySingleton<HomeLocalDataSource>(() => HomeLocalDataSourceImpl());
}
