import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mypro/features/home/data/models/shoes_models_model.dart';
import 'package:mypro/features/home/data/repos/home_repo.dart';

part 'shoes_models_state.dart';

class ShoesModelsCubit extends Cubit<ShoesModelsState> {
  ShoesModelsCubit(this.homeRepo) : super(ShoesModelsInitial());

  final HomeRepo homeRepo;

  Future<void> fetchAllShoesModels() async {
    emit(ShoesModelsLoading());
    var result = await homeRepo.fetchAllShoesModels();
    result.fold((failure) {
      emit(ShoesModelsFailure(failure.errorMessage));
    }, (shoesModels) {
      emit(ShoesModelSsuccess(shoesModels));
    });
  }
}
