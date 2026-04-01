import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

abstract class GetStartedEvent extends Equatable {
  const GetStartedEvent();
  @override
  List<Object?> get props => [];
}

abstract class GetStartedState extends Equatable {
  const GetStartedState();
  @override
  List<Object?> get props => [];
}

class GetStartedInitial extends GetStartedState {}

class GetStartedBloc extends Cubit<GetStartedState> {
  GetStartedBloc() : super(GetStartedInitial());
}
