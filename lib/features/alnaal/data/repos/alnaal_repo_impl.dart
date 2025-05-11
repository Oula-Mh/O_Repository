
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mypro/features/alnaal/data/models/alnaal_model.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/api_service.dart';
import '../../../../core/utils/end_point.dart';
import 'alnaal_repo.dart';

class AlnaalRepoImpl implements AlnaalRepo {
  final ApiService apiService;

  AlnaalRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<AlnaalModel>>> fetchAlllAlnaal(Map body) async{
    try {
      var data = await apiService.post(endPoint: EndPoint.listAlnaal, data:body);

      List<AlnaalModel> alnaalModel = [];
      for (var item in data['data']) {
        alnaalModel.add(AlnaalModel.fromJson(item));
      }
      return right(alnaalModel);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }


}
