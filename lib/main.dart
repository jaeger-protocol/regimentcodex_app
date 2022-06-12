import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regimentcodex/core/config/localization_delegates.dart';
import 'package:regimentcodex/core/config/providers/regiment_provider.dart';
import 'package:regimentcodex/core/config/routes.dart';
import 'package:regimentcodex/core/presentation/theme/regiment_codex_theme.dart';
import 'package:regimentcodex/features/regiment_codex/regiment_codex.dart';
import 'package:regimentcodex/generated/l10n.dart';

void main() {
  runApp(const RegimentCodex());
}

class RegimentCodex extends StatelessWidget {
  const RegimentCodex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: regimentCodexProviders,
      child: MaterialApp(
        title: 'Regiment Codex',
        theme: RegimentCodexTheme.main,
        routes: routes(context),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: localizationDelegates(),
        supportedLocales: RCLocal.delegate.supportedLocales,
        home: const RegimentCodexOverview(),
      ),
    );
  }
}
