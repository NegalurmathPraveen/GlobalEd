import 'banner.dart';

class HomeDataModel {
  List<Block> data;

  HomeDataModel({required this.data});

  // Factory method to create a Banner from JSON
  factory HomeDataModel.fromJson(Map<String, dynamic> json) {
    return HomeDataModel(data: (json['data'] as List).map((postJson) => Block.fromJson(postJson)).toList());
  }

  // Method to convert a Banner to JSON
  Map<String, dynamic> toJson() {
    return {
      'data': data.map((banner) => banner.toJson()).toList(),
    };
  }
}
