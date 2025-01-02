import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/home_data_model.dart';
import 'home_local_data_source.dart';

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  Future<HomeDataModel> getHomeScreenData() async {
    final Map<String, dynamic> data = await readJson('assets/json_data/homepage.json');
    // Convert the JSON data into a HomeDataModel object
    return HomeDataModel.fromJson(data);
  }

  Future<Map<String, dynamic>> readJson(String filePath) async {
    final response = await rootBundle.loadString(filePath);
    return await json.decode(response);
  }
}
