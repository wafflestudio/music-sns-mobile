import 'package:dartz/dartz.dart';
import '../core/value_failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}

class EmailAuthCode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAuthCode(String input) {
    return EmailAuthCode._(
      validateEmailAuthCode(input),
    );
  }

  const EmailAuthCode._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String input) {
    return PhoneNumber._(
      validatePhoneNumber(input),
    );
  }

  const PhoneNumber._(this.value);
}

class UserName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UserName(String input) {
    return UserName._(
      validateUserName(input),
    );
  }

  const UserName._(this.value);
}

class NotEmptyString extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NotEmptyString(String input) {
    return NotEmptyString._(
      validateStringNotEmpty(input),
    );
  }

  const NotEmptyString._(this.value);
}
