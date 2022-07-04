import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

class HomeController extends GetxController {
  final _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
  ).obs;

  PackageInfo get packageInfo => _packageInfo.value;

  @override
  void onInit() {
    _initPackageInfo();

    super.onInit();
  }

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    _packageInfo.value = info;
  }
}
