import 'dart:convert' show Encoding;

import 'package:flutter/material.dart' show kToolbarHeight;

import 'device.dart';
import 'language_code.dart';

class Global {
  /// Device Relative
  static Device device;

  /// APP Language
  static bool initLocale = false;

  static bool lockLanguage = false;

  static LanguageCode _locale = defaultLocale;

  static String get localeJsonKey => _locale.value.contentKey;

  static String get localeCode => _locale.value.code;

  static set setLocale(String localeCode) =>
      _locale = LanguageCode.getByCode(localeCode);

  /// Web Service
  static const bool HAS_FLEX_ROUTE = false;
  static const String CURRENT_BASE = EG990_OFFICIAL_URL;
  static String currentService = EG990_SERVICE_URL;

  static const String DOMAIN_NAME = "eg990.com";
  static const String EG990_TEST_URL = "";
  static const String EG990_BASE_URL = "";
  static const String EG990_OFFICIAL_URL = "https://eg990.com/";
  static const String EG990_SERVICE_URL = "http://vip66741.com/";

  /// HIVE table name
  static const String CACHED_COOKIE = 'CACHED_USER_COOKIE';
  static const String CACHE_LOGIN_FORM = 'CACHE_LOGIN_FORM';
  static const String CACHE_APP_DATA = 'CACHE_APP_DATA';

  static const String CACHE_APP_DATA_KEY_LANG = 'lang';
  static const String CACHE_APP_DATA_KEY_THEME = 'theme';

  /// Other static value
  static const double APP_MENU_HEIGHT = kToolbarHeight - 8.0;
  static const double APP_NAV_HEIGHT = kToolbarHeight + 12.0;
  static const double APP_BARS_HEIGHT = Global.APP_MENU_HEIGHT + APP_NAV_HEIGHT;
  static const double TEST_DEVICE_HEIGHT = 785.45;
  static const double TEST_DEVICE_WIDTH = 392.72;

  static const String WEB_MIMETYPE = 'text/html';
  static Encoding webEncoding = Encoding.getByName('utf-8');
}
