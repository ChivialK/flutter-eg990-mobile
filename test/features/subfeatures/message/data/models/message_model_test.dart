import 'dart:convert';

import 'package:flutter_eg990_mobile/features/routes/subfeatures/message/data/models/message_model.dart';
import 'package:flutter_eg990_mobile/utils/json_util.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fixtures/fixture_reader.dart';

void main() {
  final map = json.decode(fixture('subfeatures/message/station.json'));

  test('test message model and entity', () {
    var list = JsonUtil.decodeArrayToModel<MessageModel>(
      map,
      (jsonMap) => MessageModel.jsonToMessageModel(jsonMap),
      tag: 'MessageModel',
    );
    print(list);
    expect(list.length, equals(5));
    expect(list, isA<List<MessageModel>>());
  });
}