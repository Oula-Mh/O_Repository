
import 'package:dartz/dartz.dart';
import 'package:mypro/features/alnaal/data/models/alnaal_model.dart';
import '../../../../core/errors/failures.dart';

abstract class AlnaalRepo {
  Future<Either<Failure, List<AlnaalModel>>> fetchAlllAlnaal(Map data);
}
