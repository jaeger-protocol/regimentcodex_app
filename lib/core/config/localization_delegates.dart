import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:regimentcodex/generated/l10n.dart';

List<LocalizationsDelegate<dynamic>> localizationDelegates() {
  return <LocalizationsDelegate<dynamic>>[
    RCLocal.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];
}
