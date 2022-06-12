library regiment_codex_theme;

import 'package:flutter/material.dart';
import 'package:regimentcodex/core/presentation/navigation/custom_navigation.dart';
import 'package:regimentcodex/gen/fonts.gen.dart';

part 'main_theme.dart';

class RegimentCodexTheme {
  const RegimentCodexTheme._();

  static String defaultFont = FontFamily.helvetica;
  static String secondaryFont = FontFamily.oxta;

  static ThemeData main = _mainTheme;
}