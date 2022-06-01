import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:regimentcodex/features/regiment_codex/data/models/ghost_traits_model.dart';

part 'ghost_profile_model.freezed.dart';
part 'ghost_profile_model.g.dart';

@Freezed()
class GhostProfileModel with _$GhostProfileModel {
  factory GhostProfileModel({
    final int? id,
    final String? name,
    final String? image,
    final String? openseaLink,
    final String? holderLink,
    final String? description,
    final List<GhostAttributesModel>? attributes,
  }) = _GhostProfileModel;

  factory GhostProfileModel.fromJson(Map<String, dynamic> json) =>
      _$GhostProfileModelFromJson(json);
}
