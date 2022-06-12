// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ghost_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GhostProfileModel _$$_GhostProfileModelFromJson(Map<String, dynamic> json) =>
    _$_GhostProfileModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      openseaLink: json['openseaLink'] as String?,
      holderLink: json['holderLink'] as String?,
      description: json['description'] as String?,
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map((e) => GhostAttributesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GhostProfileModelToJson(
        _$_GhostProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'openseaLink': instance.openseaLink,
      'holderLink': instance.holderLink,
      'description': instance.description,
      'attributes': instance.attributes,
    };
