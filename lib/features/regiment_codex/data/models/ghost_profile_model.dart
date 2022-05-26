import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:regimentcodex/features/regiment_codex/data/models/ghost_traits_model.dart';

part 'ghost_profile_model.freezed.dart';
part 'ghost_profile_model.g.dart';

@Freezed()
class GhostProfileModel with _$GhostProfileModel {
  factory GhostProfileModel({
    final int? id,
    final String? image,
    final String? name,
    final int? number,
    final num? count,
    final String? openseaLink,
    final String? holderLink,
    final List<GhostTraitsModel>? traits,
  }) = _GhostProfileModel;

  factory GhostProfileModel.fromJson(Map<String, dynamic> json) =>
      _$GhostProfileModelFromJson(json);
}
