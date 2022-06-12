// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NFTCollectionModel _$$_NFTCollectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_NFTCollectionModel(
      slug: json['slug'] as String?,
      count: json['count'] as num?,
      collectionLink: json['collectionLink'] as String? ?? Links.opensea,
      baseCurrency: json['basecurrency'] as String?,
      oneDayChange: json['one_day_change'] as num?,
      oneDaySales: json['one_day_sales'] as num?,
      oneDayVolume: json['one_day_volume'] as num?,
      numberOfSales: json['total_sales'] as num?,
      volumeTraded: json['total_volume'] as num?,
      floorPrice: json['floor_price'] as num?,
      owners: json['num_owners'] as num?,
    );

Map<String, dynamic> _$$_NFTCollectionModelToJson(
        _$_NFTCollectionModel instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'count': instance.count,
      'collectionLink': instance.collectionLink,
      'basecurrency': instance.baseCurrency,
      'one_day_change': instance.oneDayChange,
      'one_day_sales': instance.oneDaySales,
      'one_day_volume': instance.oneDayVolume,
      'total_sales': instance.numberOfSales,
      'total_volume': instance.volumeTraded,
      'floor_price': instance.floorPrice,
      'num_owners': instance.owners,
    };
