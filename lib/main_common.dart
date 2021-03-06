import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/internal/orientation_helper.dart';
import 'package:hive/hive.dart';
import 'package:logging/logging.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import 'core/data/hive_adapters_export.dart';
import 'env/config_reader.dart';
import 'env/environment.dart';
import 'features/main_app.dart';
import 'injection_container.dart' as di;

Future<void> mainCommon(String env) async {
  // Always call this if the main method is asynchronous
  WidgetsFlutterBinding.ensureInitialized();
  // Load the JSON config into memory
  await ConfigReader.initialize();

  switch (env) {
    case Environment.dev:
      print('Config Version: ${ConfigReader.getVersion()}');
      break;
  }

  // request permission
  if (Platform.isIOS)
    await _initPermissionList([Permission.location, Permission.storage]);
  else
    await _initPermissionList(Permission.values);

  // setup log
  _setupLogging();

  // setup orientation
  OrientationHelper.setPreferredOrientations();
  OrientationHelper.enabledSystemUIOverlays();

  // setup injector
  await di.init();

  // init hive
  final docDir = await getApplicationDocumentsDirectory();
  Hive.init(docDir.path);
  print('Hive initialized, location: $docDir');
  try {
    Hive.registerAdapter(BannerEntityAdapter());
    Hive.registerAdapter(MarqueeEntityAdapter());
    Hive.registerAdapter(GameCategoryModelAdapter());
    Hive.registerAdapter(GamePlatformEntityAdapter());
    Hive.registerAdapter(CookieAdapter());
    Hive.registerAdapter(HiveCookieEntityAdapter());
    Hive.registerAdapter(PromoEntityAdapter());
    Hive.registerAdapter(LoginHiveFormAdapter());
  } catch (e) {
    print('register hive adapter has error!!');
  }

  // run application
  runApp(new MainApp());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.loggerName}: [${rec.level.name}] ${rec.message}');
  });
}

Future<void> _initPermissionList(List<Permission> permissions) async {
  try {
    return await permissions.request().then((map) async {
      StringBuffer result = new StringBuffer();
      map.forEach((key, value) {
        result.write('permission: $key is ${value.isGranted}');
        if (key != map.keys.last) result.write('\n');
      });
      print('Permissions: ${result.toString()}');
    });
  } catch (e) {
    print('permission request has exception: $e');
  }
}
