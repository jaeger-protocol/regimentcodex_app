import 'package:freezed_annotation/freezed_annotation.dart';

part 'ghost_traits_model.freezed.dart';

part 'ghost_traits_model.g.dart';

@Freezed()
class GhostAttributesModel with _$GhostAttributesModel {
  factory GhostAttributesModel({
    final String? id,
    @JsonKey(name: 'trait_type') final String? traitType,
    final String? value,
  }) = _GhostAttributesModel;

  factory GhostAttributesModel.fromJson(Map<String, dynamic> json) =>
      _$GhostAttributesModelFromJson(json);
}
