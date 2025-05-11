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
  @override
  List<Object> get props => [errMessage];
}

class ShoesModelSuccess extends ShoesModelsState {
  final List<ShoesModelsModel> shoesModels;
  const ShoesModelSuccess(this.shoesModels);
  @override
  List<Object> get props => [shoesModels];
}
