import 'dart:convert' show json;

import 'package:flutter_test/flutter_test.dart';

import 'file:///C:/Dev/Projects/flutter_ty_mobile/lib/features/home/data/models/ad_model.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  final List list = json.decode(fixture('ad.json'));

  test('test decode ad data', () {
    print('\nlist: $list\n\n');
    List ads = list.map((e) => AdModel.jsonToAdModel(e)).toList();
    print('ads: $ads');
    expect(ads.every((element) => element is AdModel), true);
    expect(ads.length, 3);
  });
}
