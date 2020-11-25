import 'package:flutter/foundation.dart' show debugPrint;
import 'package:flutter_eg990_mobile/infrastructure/hive/hive_actions.dart'
    show getHiveBox;
import 'package:flutter_eg990_mobile/application/global.dart';
import 'package:flutter_eg990_mobile/infrastructure/core/dio_api_service.dart';
import 'package:flutter_eg990_mobile/domain/auth/hive_cookie.dart';
import 'package:flutter_eg990_mobile/mylogger.dart';
import 'package:flutter_eg990_mobile/domain/user/login/login_repository.dart'
    show LoginApi;
import 'package:hive/hive.dart' show Box;

/// Store user token in [Hive}
///
///@author H.C.CHIANG
///@version 2020/2/18
class TokenStorage {
  static String tag = 'UserCookie';

  static Future<void> save(String account) async {
    Box box = await getHiveBox(Global.CACHED_COOKIE);
    var cookies = DioApiService.loadCookies(
        Uri.parse('${Global.CURRENT_BASE}${LoginApi.LOGIN}'));
//    for (var value in cookies) {
//      debugPrint('cookie name: ${value.name}');
//    }
    var tokenCookie =
        cookies.singleWhere((element) => element.name == 'token_mobile');
    debugPrint('cookie token: ${tokenCookie.value}');
    debugPrint('cookie token length: ${tokenCookie.value.length}');
    try {
      // TODO: Need to check if saving token to hive is necessary or the RAM cookie will suffice
      box.put(account, HiveCookieEntity(account: account, cookie: tokenCookie));
      MyLogger.print(msg: 'save token in HIVE: ${box.values.length}', tag: tag);
    } catch (e) {
      MyLogger.warn(msg: 'save token in HIVE has error', error: e, tag: tag);
    }
    box.compact();
    return box.close();
  }

  static Future<HiveCookieEntity> load(String account) async {
    Box box = await getHiveBox(Global.CACHED_COOKIE);
    HiveCookieEntity entity;
    if (box.isNotEmpty) {
      try {
        entity = box.get(account) as HiveCookieEntity;
      } catch (e) {
        MyLogger.warn(msg: 'get token from HIVE has error', error: e, tag: tag);
      }
    }
    box.close();
    debugPrint('loaded hive token: ${entity.cookie}');
    return entity;
  }

  static Future<void> clear() async {
    Box box = await getHiveBox(Global.CACHED_COOKIE);
    box.clear();
    box.close();
  }
}
