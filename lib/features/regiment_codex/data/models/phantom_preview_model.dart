import 'package:freezed_annotation/freezed_annotation.dart';

part 'phantom_preview_model.freezed.dart';
part 'phantom_preview_model.g.dart';

@Freezed()
class PhantomPreviewModel with _$PhantomPreviewModel {
  factory PhantomPreviewModel({
    final String? name,
    final String? sigil,
    final int? number,
  }) = _PhantomPreviewModel;

  factory PhantomPreviewModel.fromJson(Map<String, dynamic> json) =>
      _$PhantomPreviewModelFromJson(json);
}
