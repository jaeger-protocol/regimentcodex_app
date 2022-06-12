library mock_data;

import 'package:regimentcodex/features/regiment_codex/data/models/ghost_profile_model.dart';
import 'package:regimentcodex/features/regiment_codex/data/models/phantom_profile_model.dart';
import 'package:regimentcodex/gen/assets.gen.dart';

part 'ghosts.dart';

part 'phantoms.dart';

class MockData {
  MockData._();

  static const bool useMocks = true;

  static List<PhantomProfileModel> phantoms = [
    for (final element in _phantomsJson) PhantomProfileModel.fromJson(element)
  ];

  static List<GhostProfileModel> ghosts = [
    for (final element in _ghostsJson) GhostProfileModel.fromJson(element)
  ];
}
