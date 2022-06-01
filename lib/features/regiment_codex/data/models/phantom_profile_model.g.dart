// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phantom_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhantomProfileModel _$$_PhantomProfileModelFromJson(
        Map<String, dynamic> json) =>
    _$_PhantomProfileModel(
      id: json['id'] as int?,
      phantomId: json['phantom_di'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      phantomStory: json['phantom_story'] as String?,
      regimentInfo: json['regiment_info'] as String?,
      personalPage: json['personal_page'] as String?,
      twitter: json['twitter'] as String?,
      personalWallet: json['personal_wallet'] as String?,
      sigil: json['sigil'] as String?,
      number: json['number'] as int?,
      ghosts: (json['ghosts'] as List<dynamic>?)
          ?.map((e) => GhostProfileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PhantomProfileModelToJson(
        _$_PhantomProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phantom_di': instance.phantomId,
      'name': instance.name,
      'image': instance.image,
      'phantom_story': instance.phantomStory,
      'regiment_info': instance.regimentInfo,
      'personal_page': instance.personalPage,
      'twitter': instance.twitter,
      'personal_wallet': instance.personalWallet,
      'sigil': instance.sigil,
      'number': instance.number,
      'ghosts': instance.ghosts,
    };
