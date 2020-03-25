import 'package:rp_mobile/exceptions.dart';
import 'package:rp_mobile/locale/localized_string.dart';

abstract class AuthService {
  Future<void> login(String email, String password);
}

class AuthException implements LocalizeMessageException {
  final LocalizedString localizedMessage;
  final String message;

  AuthException(this.localizedMessage, this.message);
}

class InvalidLoginOrPasswordException extends AuthException {
  InvalidLoginOrPasswordException()
      : super(
          LocalizedString.fromString('Invalid login or password'),
          'Invalid login or password',
        );
}

class LockedAuthException extends AuthException {
  final String until;

  LockedAuthException(this.until)
      : super(
          LocalizedString.fromString('Locked login'),
          'Locked login',
        );
}

class InvalidSessionException extends AuthException {
  InvalidSessionException()
      : super(
          LocalizedString.fromString('Invalid session'),
          'Invalid session',
        );
}

class UnexpectedError extends AuthException {
  UnexpectedError()
      : super(
          LocalizedString.fromString('Unexpected error'),
          'Unexpected error',
        );
}
