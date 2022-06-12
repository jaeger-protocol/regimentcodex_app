import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:regimentcodex/core/config/links.dart';

part 'nft_collection_model.freezed.dart';
part 'nft_collection_model.g.dart';

@unfreezed
class NFTCollectionModel with _$NFTCollectionModel {
  factory NFTCollectionModel({
    String? slug,
    final num? count,
    @Default(Links.opensea) String collectionLink,
    @JsonKey(name: 'basecurrency') final String? baseCurrency,
    @JsonKey(name: 'one_day_change') final num? oneDayChange,
    @JsonKey(name: 'one_day_sales') final num? oneDaySales,
    @JsonKey(name: 'one_day_volume') final num? oneDayVolume,
    @JsonKey(name: 'total_sales') final num? numberOfSales,
    @JsonKey(name: 'total_volume') final num? volumeTraded,
    @JsonKey(name: 'floor_price') final num? floorPrice,
    @JsonKey(name: 'num_owners') final num? owners,
  }) = _NFTCollectionModel;

  factory NFTCollectionModel.fromJson(Map<String, dynamic> json) =>
      _$NFTCollectionModelFromJson(json);
}
