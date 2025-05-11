import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mypro/features/alnaal/data/repos/alnaal_repo.dart';
import '../../../data/models/alnaal_model.dart';
part 'alnaal_state.dart';

class AlnaalCubit extends Cubit<AlnaalState> {
  AlnaalCubit(this.alnaalRepo) : super(AlnaalInitial());

  final AlnaalRepo alnaalRepo;
  Future<void> fetchAllAlnaal({required int id}) async {
    emit(AlnaalLoading());
    var result = await alnaalRepo.fetchAlllAlnaal({"id":"$id"});
    result.fold((failure) {
      emit(AlnaalFailure(failure.errorMessage));
    }, (shoesModels) {
      emit(AlnaalSuccess(shoesModels));
    });
  }
}
