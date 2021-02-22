import 'dart:convert';

import 'package:flutter_eg990_mobile/features/routes/subfeatures/transactions/data/models/transaction_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fixtures/fixture_reader.dart';

void main() {
  final map =
      json.decode(fixture('subfeatures/transactions/transfer_record.json'));

  test('test transaction model and entity', () {
    TransactionModel model = TransactionModel.jsonToTransactionModel(map);
    print('model: $model\n\n');
  });
}
