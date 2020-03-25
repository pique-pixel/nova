import 'package:flutter/widgets.dart';
import 'package:optional/optional.dart';
import 'package:rp_mobile/locale/app_localizations.dart';
import 'package:rp_mobile/locale/localized_string.dart';

import 'data.dart';

abstract class Validator {
  bool isValid<T>(FormValue<T> value);

  Optional<LocalizedString> getValidationMessage<T>(FormValue<T> value);
}

class RequiredValidator implements Validator {
  @override
  Optional<LocalizedString> getValidationMessage<T>(
    FormValue<T> value,
  ) {
    if (value.isEmpty()) {
      return Optional.of(
        LocalizedString(
            (context) => AppLocalizations.of(context).validationRequiredError),
      );
    } else {
      return Optional.empty();
    }
  }

  @override
  bool isValid<T>(FormValue<T> value) {
    return !value.isEmpty();
  }
}
