import 'package:package_info_plus/package_info_plus.dart';

import 'base_package_info_adapter.dart';

final class PackageInfoPlusAdapter implements BasePackageInfoAdapter {
  PackageInfoPlusAdapter(this._info);
  final PackageInfo _info;

  @override
  PackageInfo get packageInfo => _info;
}
