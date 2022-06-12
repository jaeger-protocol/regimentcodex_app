// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phantom_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhantomProfileModel _$$_PhantomProfileModelFromJson(
        Map<String, dynamic> json) =>
    _$_PhantomProfileModel(
      id: json['id'] as int?,
      phantomId: json['phantom_id'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      personalityTraits: (json['personality_traits'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      phantomStory: json['phantom_story'] as String?,
      regimentInfo: json['regiment_info'] as String?,
      personalPage: json['personal_page'] as String?,
      personalWallet: json['personal_wallet'] as String?,
      twitter: json['twitter'] as String?,
      sigil: json['sigil'] as String?,
      regiment: json['regiment'] == null
          ? null
          : PhantomRegiment.fromJson(json['regiment'] as Map<String, dynamic>),
      ghosts: (json['ghosts'] as List<dynamic>?)
          ?.map((e) => GhostProfileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PhantomProfileModelToJson(
        _$_PhantomProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phantom_id': instance.phantomId,
      'name': instance.name,
      'image': instance.image,
      'personality_traits': instance.personalityTraits,
      'phantom_story': instance.phantomStory,
      'regiment_info': instance.regimentInfo,
      'personal_page': instance.personalPage,
      'personal_wallet': instance.personalWallet,
      'twitter': instance.twitter,
      'sigil': instance.sigil,
      'regiment': instance.regiment,
      'ghosts': instance.ghosts,
    };
