import 'package:app_3/Domain/auth/auth/user.dart';
import 'package:app_3/Domain/auth/core/valueobjectcommon.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDomainX on User {
  User1 toDomain() {
    return User1(id: UniqueId.fromUniqueString(uid));
  }
}
