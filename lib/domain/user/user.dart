import 'package:flutter_eg990_mobile/builders/dataclass/dataclass.dart';
import 'package:flutter_eg990_mobile/domain/core/value_objects.dart';
import 'package:meta/meta.dart';

import '../../presentation/features/login/data/form/login_form_data.dart';

part 'user.g.dart';

@dataClass
class User extends _$User {
  final UniqueId id;
  final Username username;
  final String credit;
  final int vip;

  const User({
    @required this.id,
    @required this.username,
    @required this.credit,
    @required this.vip,
  });
}

extension UserExtension on User {
  User updateCredit(String credit) => copyWith(credit: credit);
}