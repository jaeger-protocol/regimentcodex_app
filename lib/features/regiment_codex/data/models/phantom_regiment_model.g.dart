// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phantom_regiment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhantomRegiment _$$_PhantomRegimentFromJson(Map<String, dynamic> json) =>
    _$_PhantomRegiment(
      regimentDescription: json['regiment_description'] as String?,
      regimentPerks: (json['regiment_perks'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      regimentName: json['regimentName'] as String?,
      regimentNumber: json['regimentNumber'] as String?,
      totalItems: json['items'] as int?,
      owners: json['owners'] as int?,
      floor: json['floor'] as num?,
      volumeTraded: json['volumeTraded'] as String?,
      numberOfSales: json['numberOfSales'] as int?,
      highestSale: json['highestSale'] as int?,
    );

Map<String, dynamic> _$$_PhantomRegimentToJson(_$_PhantomRegiment instance) =>
    <String, dynamic>{
      'regiment_description': instance.regimentDescription,
      'regiment_perks': instance.regimentPerks,
      'regimentName': instance.regimentName,
      'regimentNumber': instance.regimentNumber,
      'items': instance.totalItems,
      'owners': instance.owners,
      'floor': instance.floor,
      'volumeTraded': instance.volumeTraded,
      'numberOfSales': instance.numberOfSales,
      'highestSale': instance.highestSale,
    };
