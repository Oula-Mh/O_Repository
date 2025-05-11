import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mypro/core/errors/failures.dart';
import 'package:mypro/core/utils/api_service.dart';
import 'package:mypro/core/utils/end_point.dart';
import 'package:mypro/features/home/data/models/shoes_models_model.dart';
import 'package:mypro/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<ShoesModelsModel>>> fetchAllShoesModels() async {
    try {
      var data = await apiService.get(endPoint: EndPoint.listModel);

      List<ShoesModelsModel> shoesModels = [];
      for (var item in data['data']) {
        shoesModels.add(ShoesModelsModel.fromJson(item));
      }
      return right(shoesModels);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
