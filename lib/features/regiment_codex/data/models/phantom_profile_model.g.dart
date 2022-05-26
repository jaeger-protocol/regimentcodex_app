// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phantom_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhantomProfileModel _$$_PhantomProfileModelFromJson(
        Map<String, dynamic> json) =>
    _$_PhantomProfileModel(
      name: json['name'] as String?,
      about: json['about'] as String?,
      sigil: json['sigil'] as String?,
      number: json['number'] as int?,
      ghosts: (json['ghosts'] as List<dynamic>?)
          ?.map((e) => GhostProfileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PhantomProfileModelToJson(
        _$_PhantomProfileModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'about': instance.about,
      'sigil': instance.sigil,
      'number': instance.number,
      'ghosts': instance.ghosts,
    };
