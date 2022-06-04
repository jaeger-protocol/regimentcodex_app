part of regiment_codex_theme;

const double _defaultRadius = 8.0;

final ThemeData _mainTheme = ThemeData(
  pageTransitionsTheme: PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: RegimentCodexPageTransitionAnimation(),
      TargetPlatform.iOS: RegimentCodexPageTransitionAnimation(),
      TargetPlatform.macOS: RegimentCodexPageTransitionAnimation(),
      TargetPlatform.windows: RegimentCodexPageTransitionAnimation(),
      TargetPlatform.linux: RegimentCodexPageTransitionAnimation(),
      TargetPlatform.fuchsia: RegimentCodexPageTransitionAnimation(),
    }
  ),
  androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
  scaffoldBackgroundColor: const Color.fromRGBO(6, 6, 8, 1.0),
  primaryColor: const Color.fromRGBO(6, 6, 8, 1.0),
  primaryColorDark: const Color.fromRGBO(6, 6, 8, 1.0),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Color.fromRGBO(77, 182, 172, 1.0),
  ),
  textTheme: const TextTheme(
    caption: TextStyle(
      fontSize: 14,
      letterSpacing: 0.1,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(128, 128, 128, 1.0),
    ),
    bodyText1: TextStyle(
      fontWeight: FontWeight.w500,
      color: Color.fromRGBO(255, 255, 255, 1.0),
    ),
    bodyText2: TextStyle(
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(255, 255, 255, 1.0),
    ),
    headline2: TextStyle(
      fontSize: 40,
      color: Color.fromRGBO(255, 255, 255, 1.0),
    ),
    headline3: TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.w500,
      color: Color.fromRGBO(255, 255, 255, 1.0),
    ),
    headline4: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w500,
      color: Color.fromRGBO(255, 255, 255, 1.0),
    ),
    headline5: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: Color.fromRGBO(255, 255, 255, 1.0),
    ),
    headline6: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Color.fromRGBO(255, 255, 255, 1.0),
    ),
  ),
  dataTableTheme: DataTableThemeData(
    decoration: BoxDecoration(
      color: const Color.fromRGBO(26, 26, 37, 0.3),
      borderRadius: BorderRadius.circular(_defaultRadius),
    ),
    headingRowColor: MaterialStateProperty.all(
      const Color.fromRGBO(26, 26, 37, 0.4),
    ),
    dataRowColor: MaterialStateProperty.all(
      const Color.fromRGBO(26, 26, 37, 0.3),
    ),
    headingTextStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
  tooltipTheme: TooltipThemeData(
    decoration: BoxDecoration(
      color: const Color.fromRGBO(6, 6, 8, 1.0),
      borderRadius: BorderRadius.circular(_defaultRadius),
    ),
    textStyle: const TextStyle(fontSize: 14),
  ),
  errorColor: const Color.fromRGBO(207, 102, 121, 1.0),
  brightness: Brightness.dark,
  indicatorColor: const Color.fromRGBO(255, 255, 255, 1.0),
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: Color.fromRGBO(6, 6, 8, 1.0),
    primaryContainer: Color.fromRGBO(6, 6, 8, 1.0),
    secondary: Color.fromRGBO(6, 6, 8, 1.0),
    secondaryContainer: Color.fromRGBO(6, 6, 8, 1.0),
    background: Color.fromRGBO(6, 6, 8, 1.0),
    surface: Color.fromRGBO(15, 17, 20, 1.0),
    error: Color.fromRGBO(244, 67, 54, 1.0),
    onPrimary: Color.fromRGBO(255, 255, 255, 1.0),
    onSecondary: Color.fromRGBO(255, 255, 255, 1.0),
    onBackground: Color.fromRGBO(255, 255, 255, 1.0),
    onSurface: Color.fromRGBO(255, 255, 255, 1.0),
    onError: Color.fromRGBO(0, 0, 0, 1.0),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    errorMaxLines: 2,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
  ),
  appBarTheme: const AppBarTheme(
    color: Color.fromRGBO(6, 6, 8, 1.0),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    elevation: 3.0,
    selectedLabelStyle: TextStyle(fontSize: 12),
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Color.fromRGBO(6, 6, 8, 1.0),
    showUnselectedLabels: true,
    unselectedLabelStyle: TextStyle(
      fontSize: 12,
      color: Color.fromRGBO(176, 190, 197, 1.0),
    ),
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12.0),
        topRight: Radius.circular(12.0),
      ),
    ),
  ),
  cardColor: const Color.fromRGBO(15, 17, 20, 1.0),
  cardTheme: CardTheme(
    elevation: 5.0,
    color: const Color.fromRGBO(15, 17, 20, 1.0),
    margin: const EdgeInsets.symmetric(
      horizontal: 10.0,
      vertical: 5.0,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(_defaultRadius),
    ),
  ),
  popupMenuTheme: PopupMenuThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(_defaultRadius),
    ),
  ),
  dialogTheme: DialogTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(_defaultRadius),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    highlightElevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    foregroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
    backgroundColor: const Color.fromRGBO(6, 6, 8, 1.0),
  ),
  snackBarTheme: const SnackBarThemeData(
    behavior: SnackBarBehavior.floating,
    backgroundColor: Color.fromRGBO(37, 37, 37, 0.95),
    contentTextStyle: TextStyle(
      color: Color.fromRGBO(189, 189, 189, 1.0),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(_defaultRadius),
        ),
      ),
    ),
  ),
);