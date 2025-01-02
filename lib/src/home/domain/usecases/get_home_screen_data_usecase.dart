import 'package:dartz/dartz.dart';

import '../../data/models/banner.dart';
import '../repository/home_repository.dart';

typedef ResultFuture<T> = Future<Either<String, T>>;

abstract class UseCaseWithoutParams<Type> {
  const UseCaseWithoutParams();

  ResultFuture<Type> call();
}

class GetHomeDataUseCase extends UseCaseWithoutParams<List<Block>> {
  final HomeRepository _repository;

  GetHomeDataUseCase(this._repository);

  @override
  ResultFuture<List<Block>> call() async {
    return await _repository.getHomeScreenData();
  }
}
