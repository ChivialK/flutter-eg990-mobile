import 'package:flutter_eg990_mobile/application/internal/local_strings.dart';
import 'package:flutter_eg990_mobile/domain/interface/data_operator.dart';
import 'package:flutter_eg990_mobile/utils/regex_util.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart' show required;

part 'game_platform_entity.freezed.dart';
part 'game_platform_entity.g.dart';

typedef HomeSearchPlatformClicked = void Function(GamePlatformEntity);

@freezed
abstract class GamePlatformEntity
    implements _$GamePlatformEntity, DataOperator {
  const GamePlatformEntity._();

  @HiveType(typeId: 112)
  const factory GamePlatformEntity({
    @HiveField(0) @required int id,
    @HiveField(1)
    @JsonKey(name: 'class', fromJson: decodePlatformClassName)
        String className,
    @HiveField(2) @JsonKey(fromJson: decodePlatformChName) String ch,
    @HiveField(3) @required String site,
    @HiveField(4) @JsonKey(name: 'type', required: true) String category,
    @Default('0') String favorite,
  }) = _GamePlatformEntity;

  static GamePlatformEntity parseJson(Map<String, dynamic> jsonMap) =>
      _$_GamePlatformEntity(
        id: jsonMap['id'] as int,
        className: decodePlatformClassName(jsonMap),
        ch: decodePlatformChName(jsonMap),
        site: jsonMap['site'] as String,
        category: jsonMap['type'] as String,
        favorite: jsonMap['favorite'] as String ?? '0',
      );

  @override
  String operator [](String key) => '$className';
}

String decodePlatformClassName(dynamic str) => (str.containsKey('class'))
    ? '${str['class']}'
    : '${str['site']}-${str['type']}';

String decodePlatformChName(dynamic str) => (str.containsKey('ch'))
    ? '${str['ch']}'
    : '${'${str['site']}'.toUpperCase()} ${str['type']}';

const String _gamePlatformAssetPathPrefix = "assets/images/home/platforms/mob_";

extension GamePlatformEntityExtension on GamePlatformEntity {
  String get iconUrl => '/images/index/logo/${site.toUpperCase()}.png';

  String get imageUrl => '/images/nav/nav_${category}_$site.png';

  String get assetUrl {
    switch (category) {
      case 'casino':
        return "${_gamePlatformAssetPathPrefix}live_${site.toLowerCase()}.png";
      default:
        return "$_gamePlatformAssetPathPrefix${category}_${site.toLowerCase()}.png";
    }
  }

  /// check if the platform is also a game entry
  bool get isGameHall =>
      ['casino', 'sport', 'lottery', 'esport'].contains(category);

  /// game url for game halls
  String get gameUrl =>
      (category == 'esport') ? '$site/sport/0' : '$site/$category/0';

  /// title on each platform's games page
  String get pageTitle {
    switch (category) {
      case 'casino':
        return '${site.toUpperCase()} ${localeStr.textCategoryCasino}';
      case 'slot':
        return '${site.toUpperCase()} ${localeStr.textCategorySlot}';
      case 'sport':
        return '${site.toUpperCase()} ${localeStr.textCategorySport}';
      case 'fish':
        return '${site.toUpperCase()} ${localeStr.textCategoryFish}';
      case 'lottery':
        return '${site.toUpperCase()} ${localeStr.textCategoryLottery}';
      case 'card':
        return '${site.toUpperCase()} ${localeStr.textCategoryCard}';
      case 'esport':
        return '${site.toUpperCase()} ${localeStr.textCategoryEsport}';
      default:
        return ch;
    }
  }

  bool isLongText(int limit) => pageTitle.countLength > limit;
}