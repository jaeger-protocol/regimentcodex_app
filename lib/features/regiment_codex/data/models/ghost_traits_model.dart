import 'package:freezed_annotation/freezed_annotation.dart';

part 'ghost_traits_model.freezed.dart';

part 'ghost_traits_model.g.dart';

@Freezed()
class GhostTraitsModel with _$GhostTraitsModel {
  factory GhostTraitsModel({
    final String? name,
    final int? value,
  }) = _GhostTraitsModel;

  factory GhostTraitsModel.fromJson(Map<String, dynamic> json) =>
      _$GhostTraitsModelFromJson(json);
}
