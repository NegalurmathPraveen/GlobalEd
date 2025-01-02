import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/banner.dart';
import '../../domain/usecases/get_home_screen_data_usecase.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetHomeDataUseCase _getHomeDataUseCase;

  HomeCubit(this._getHomeDataUseCase) : super(HomeInitial());

  void getHomeDataEvent() async {
    emit(HomeDataLoadingState());
    final result = await _getHomeDataUseCase.call();
    result.fold((l) => emit(HomeDataFailedState(message: l)), (r) => emit(HomeDataLoadedState(data: r)));
  }
}
