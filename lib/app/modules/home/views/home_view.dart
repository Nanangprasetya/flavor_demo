import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key key}) : super(key: key);

  Widget _infoTile(String title, String subtitle) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle.isEmpty ? 'Not set' : subtitle),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flavor Demo"),
      ),
      body: Obx(
        () => ListView(
          children: <Widget>[
            _infoTile('App name', controller.packageInfo.appName),
            _infoTile('Package name', controller.packageInfo.packageName),
            _infoTile('Version', controller.packageInfo.version),
            _infoTile('Build Signature', controller.packageInfo.buildSignature),
            _infoTile('Build Number', controller.packageInfo.buildNumber),
          ],
        ),
      ),
    );
  }
}
