import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:regimentcodex/features/regiment_codex/data/models/ghost_profile_model.dart';

part 'phantom_profile_model.freezed.dart';

part 'phantom_profile_model.g.dart';

@Freezed()
class PhantomProfileModel with _$PhantomProfileModel {
  factory PhantomProfileModel({
    final int? id,
    @JsonKey(name: 'phantom_di') final String? phantomId,
    final String? name,
    final String? image,
    @JsonKey(name: 'phantom_story') final String? phantomStory,
    @JsonKey(name: 'regiment_info') final String? regimentInfo,
    @JsonKey(name: 'personal_page') final String? personalPage,
    final String? twitter,
    @JsonKey(name: 'personal_wallet') final String? personalWallet,
    final String? sigil,
    final int? number,
    List<GhostProfileModel>? ghosts,
  }) = _PhantomProfileModel;

  factory PhantomProfileModel.fromJson(Map<String, dynamic> json) =>
      _$PhantomProfileModelFromJson(json);
}
