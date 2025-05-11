part of 'alnaal_cubit.dart';

abstract class AlnaalState extends Equatable {
  const AlnaalState();

  @override
  List<Object> get props => [];
}

class AlnaalInitial extends AlnaalState {}

class AlnaalLoading extends AlnaalState {}

class AlnaalFailure extends AlnaalState {
  final String errMessage;
  const AlnaalFailure(this.errMessage);
  @override
  List<Object> get props => [errMessage];
}

class AlnaalSuccess extends AlnaalState {
  final List<AlnaalModel> alnaalModel;
  const AlnaalSuccess(this.alnaalModel);
  @override
  List<Object> get props => [alnaalModel];}