import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/base_about_app_repository.dart';
import 'about_app_state.dart';

final class AboutAppCubit extends Cubit<AboutAppState> {
  AboutAppCubit(this._repo) : super(const AboutAppState.initial());
  final BaseAboutAppRepository _repo;

  void getAppDetails() {
    emit(const AboutAppState.loading());
    final date = _repo.getAppDetails();
    emit(AboutAppState.success(data: date));
  }
}
