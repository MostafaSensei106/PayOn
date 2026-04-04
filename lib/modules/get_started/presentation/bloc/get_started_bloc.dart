import 'package:flutter_bloc/flutter_bloc.dart';

abstract class GetStartedEvent {
  const GetStartedEvent();
}

abstract class GetStartedState {
  const GetStartedState();
}

class GetStartedInitial extends GetStartedState {}

class GetStartedBloc extends Cubit<GetStartedState> {
  GetStartedBloc() : super(GetStartedInitial());
}
