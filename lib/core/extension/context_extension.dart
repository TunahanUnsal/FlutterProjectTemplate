import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

extension LocaleExtension on BuildContext {
  get locale => AppLocalizations.of(this);
}

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension FontExtension on BuildContext{
  double get fontLowValue => 12;
  double get fontNormalValue => 14;
  double get fontBigValue => 16;
  double get fontSoBigValue => 18;
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;
}


