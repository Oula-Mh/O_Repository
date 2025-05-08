import 'package:dartz/dartz.dart';
import 'package:mypro/features/home/data/models/shoes_models_model.dart';
import '../../../../core/errors/failures.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ShoesModelsModel>>> fetchAllShoesModels();
}
