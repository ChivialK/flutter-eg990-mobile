import 'dart:convert';

import 'package:flutter_eg990_mobile/core/network/handler/request_code_model.dart';
import 'package:flutter_eg990_mobile/features/routes/subfeatures/store/data/models/store_banner_model.dart';
import 'package:flutter_eg990_mobile/utils/json_util.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fixtures/fixture_reader.dart';

void main() {
  final map = json.decode(fixture('subfeatures/store/banner_unit.json'));

  test('test store banner model', () {
    print('\n');
    RequestCodeModel codeModel = RequestCodeModel.jsonToCodeModel(map);
    print('code model: $codeModel\n\n');
    List<StoreBannerModel> banners = JsonUtil.decodeArrayToModel(codeModel.data,
        (jsonMap) => StoreBannerModel.jsonToStoreBannerModel(jsonMap));
    print('banners: $banners\n\n');
  });
}
