part of 'shoes_models_cubit.dart';

abstract class ShoesModelsState extends Equatable {
  const ShoesModelsState();

  @override
  List<Object> get props => [];
}

class ShoesModelsInitial extends ShoesModelsState {}

class ShoesModelsLoading extends ShoesModelsState {}

class ShoesModelsFailure extends ShoesModelsState {
  final String errMessage;
  const ShoesModelsFailure(this.errMessage);
}

class ShoesModelSsuccess extends ShoesModelsState {
  final List<ShoesModelsModel> shoesModels;
  const ShoesModelSsuccess(this.shoesModels);
}
