import 'package:dartz/dartz.dart';

import '../../domain/repository/home_repository.dart';
import '../../domain/usecases/get_home_screen_data_usecase.dart';
import '../data_source/home_local_data_source.dart';
import '../models/banner.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeLocalDataSource _dataSource;

  HomeRepositoryImpl(this._dataSource);

  @override
  ResultFuture<List<Block>> getHomeScreenData() async {
    try {
      final result = await _dataSource.getHomeScreenData();
      // re-order elements based on position
      result.data.sort((a, b) => a.position.compareTo(b.position));

      return Right(result.data);
    } catch (error) {
      return const Left("failed to fetch data!");
    }
  }
}
