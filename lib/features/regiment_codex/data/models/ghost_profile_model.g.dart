// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ghost_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GhostProfileModel _$$_GhostProfileModelFromJson(Map<String, dynamic> json) =>
    _$_GhostProfileModel(
      id: json['id'] as int?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      number: json['number'] as int?,
      count: json['count'] as num?,
      openseaLink: json['openseaLink'] as String?,
      holderLink: json['holderLink'] as String?,
      traits: (json['traits'] as List<dynamic>?)
          ?.map((e) => GhostTraitsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GhostProfileModelToJson(
        _$_GhostProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'number': instance.number,
      'count': instance.count,
      'openseaLink': instance.openseaLink,
      'holderLink': instance.holderLink,
      'traits': instance.traits,
    };
