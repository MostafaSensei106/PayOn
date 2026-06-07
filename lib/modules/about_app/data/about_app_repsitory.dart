import '../../../core/services/app_info/interface/base_app_info_service.dart';
import '../../../core/utils/models/app_info_model.dart';
import 'base_about_app_repository.dart';

final class AboutAppRepsitory implements BaseAboutAppRepository {
  AboutAppRepsitory(this._appInfoService);
  final BaseAppInfoService _appInfoService;

  @override
  AppInfoModel getAppDetails() => _appInfoService.getAppDetails();
}
