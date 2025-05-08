// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:mypro/core/errors/failures.dart';
// import 'package:mypro/core/utils/api_service.dart';
// import 'package:mypro/features/home/data/models/shoes_models_model.dart';
// import 'package:mypro/features/home/data/repos/home_repo.dart';
//
// class HomeRepoImpl implements HomeRepo {
//   final ApiService apiService;
//
//   HomeRepoImpl(this.apiService);
//
//   @override
//   Future<Either<Failure, List<ShoesModelsModel>>> fetchAllShoesModels() async {
//     try {
//       var data = await apiService.get(endPoint: "endPoint");
//
//       List<ShoesModelsModel> shoesModels = [];
//       for (var item in data['item']) {
//         shshoesModels.add(ShoesModelsModel.fromJson(item));
//       }
//       return right(shshoesModels);
//     } on Exception catch (e) {
//       if (e is DioException) {
//         return left(ServerFailure.fromDioError(e));
//       }
//       return left(ServerFailure(e.toString()));
//     }
//   }
// }
