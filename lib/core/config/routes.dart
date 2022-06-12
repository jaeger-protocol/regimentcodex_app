import 'package:flutter/widgets.dart';
import 'package:regimentcodex/features/regiment_codex/regiment_codex.dart';

Map<String, Widget Function(BuildContext)> routes(BuildContext context) {
  return <String, WidgetBuilder>{
    RegimentCodexOverview.route: (_) => const RegimentCodexOverview(),
    PhantomProfileOverview.route: (_) => const PhantomProfileOverview(),
  };
}
