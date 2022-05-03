import 'package:flutter/material.dart';
import 'package:joke_teller_flutter/domain/exceptions/unexpected_exception.dart';
import 'package:joke_teller_flutter/presentation/common/extensions/build_context_extensions.dart';

class ExceptionToErrorMessageAdapter {
  static getMessage(BuildContext context, Exception exception) {
    if (exception is UnexpectedException && exception.message?.isNotEmpty == true) {
      return exception.message!;
    }
    return context.strings.unexpectedError;
  }
}
