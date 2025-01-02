import '../../data/models/banner.dart';
import '../usecases/get_home_screen_data_usecase.dart';

abstract interface class HomeRepository {
  ResultFuture<List<Block>> getHomeScreenData();
}