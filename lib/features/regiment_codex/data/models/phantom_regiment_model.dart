import 'package:freezed_annotation/freezed_annotation.dart';

part 'phantom_regiment_model.freezed.dart';
part 'phantom_regiment_model.g.dart';

@Freezed()
class PhantomRegiment with _$PhantomRegiment {
  factory PhantomRegiment({
    @JsonKey(name: 'regiment_description') final String? regimentDescription,
    @JsonKey(name: 'regiment_perks') final List<String>? regimentPerks,
    final String? regimentName,
    final String? regimentNumber,
    @JsonKey(name: 'items') final int? totalItems,
    final int? owners,
    final num? floor,
    final String? volumeTraded,
    final int? numberOfSales,
    final int? highestSale,
  }) = _PhantomRegiment;

  factory PhantomRegiment.fromJson(Map<String, dynamic> json) =>
      _$PhantomRegimentFromJson(json);
}
