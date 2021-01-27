import 'package:flutter_eg990_mobile/application/internal/local_strings.dart';
import 'package:flutter_eg990_mobile/domain/interface/data_operator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bet_record_type.freezed.dart';

@freezed
abstract class BetRecordType implements _$BetRecordType, DataOperator {
  const BetRecordType._();

  const factory BetRecordType({
    @JsonKey(name: 'id') int categoryId,
    @Deprecated('use label getter instead')
    @JsonKey(name: 'ch')
        String categoryName,
    @JsonKey(name: 'type') String categoryType,
    Map<String, dynamic> platformMap,
  }) = _BetRecordType;

  static parseJson(Map<String, dynamic> jsonMap) => _$_BetRecordType(
        categoryId: jsonMap['id'] as int,
        // ignore: deprecated_member_use_from_same_package
        categoryName: jsonMap['ch'] as String,
        categoryType: jsonMap['type'] as String,
      );

  @override
  String operator [](String key) => this.label;
}

extension BetRecordTypeExtension on BetRecordType {
  String get label {
    switch (categoryType) {
      case 'casino':
        return localeStr.textCategoryCasino;
      case 'slot':
        return localeStr.textCategorySlot;
      case 'sport':
        return localeStr.textCategorySport;
      case 'fish':
        return localeStr.textCategoryFish;
      case 'lottery':
        return localeStr.textCategoryLottery;
      case 'card':
        return localeStr.textCategoryCard;
      default:
        // ignore: deprecated_member_use_from_same_package
        return categoryName;
    }
  }
}