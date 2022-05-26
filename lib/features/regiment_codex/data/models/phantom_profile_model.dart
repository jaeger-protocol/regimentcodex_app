import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:regimentcodex/features/regiment_codex/data/models/ghost_profile_model.dart';

part 'phantom_profile_model.freezed.dart';

part 'phantom_profile_model.g.dart';

@Freezed()
class PhantomProfileModel with _$PhantomProfileModel {
  factory PhantomProfileModel({
    final String? name,
    final String? about,
    final String? sigil,
    final int? number,
    final List<GhostProfileModel>? ghosts,
  }) = _PhantomProfileModel;

  factory PhantomProfileModel.fromJson(Map<String, dynamic> json) =>
      _$PhantomProfileModelFromJson(json);
}
