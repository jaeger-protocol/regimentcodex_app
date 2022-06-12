import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:regimentcodex/features/regiment_codex/data/models/ghost_profile_model.dart';
import 'package:regimentcodex/features/regiment_codex/data/models/phantom_regiment_model.dart';

part 'phantom_profile_model.freezed.dart';

part 'phantom_profile_model.g.dart';

@Freezed()
class PhantomProfileModel with _$PhantomProfileModel {
  factory PhantomProfileModel({
    final int? id,
    @JsonKey(name: 'phantom_id') final String? phantomId,
    final String? name,
    final String? image,
    @JsonKey(name: 'personality_traits') final List<String>? personalityTraits,
    @JsonKey(name: 'phantom_story') final String? phantomStory,
    @JsonKey(name: 'regiment_info') final String? regimentInfo,
    @JsonKey(name: 'personal_page') final String? personalPage,
    @JsonKey(name: 'personal_wallet') final String? personalWallet,
    final String? twitter,
    final String? sigil,
    final PhantomRegiment? regiment,
    List<GhostProfileModel>? ghosts,
  }) = _PhantomProfileModel;

  factory PhantomProfileModel.fromJson(Map<String, dynamic> json) =>
      _$PhantomProfileModelFromJson(json);
}
