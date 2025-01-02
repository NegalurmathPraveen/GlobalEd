part of 'home_cubit.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeDataLoadedState extends HomeState {
  final List<Block> data;
  HomeDataLoadedState({required this.data});
}

final class HomeDataLoadingState extends HomeState {}

final class HomeDataFailedState extends HomeState {
  final String message;
  HomeDataFailedState({required this.message});
}