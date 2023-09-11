import 'package:app_3/Domain/auth/core/valueobjectcommon.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';

@freezed
abstract class User1 with _$User1 {
  const factory User1({
    required UniqueId id,
  }) = _User1;
}
