import '../models/home_data_model.dart';

abstract interface class HomeLocalDataSource{
  Future<HomeDataModel> getHomeScreenData();
}