// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phantom_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhantomProfileModel _$PhantomProfileModelFromJson(Map<String, dynamic> json) {
  return _PhantomProfileModel.fromJson(json);
}

/// @nodoc
mixin _$PhantomProfileModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'phantom_id')
  String? get phantomId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'personality_traits')
  List<String>? get personalityTraits => throw _privateConstructorUsedError;
  @JsonKey(name: 'phantom_story')
  String? get phantomStory => throw _privateConstructorUsedError;
  @JsonKey(name: 'regiment_info')
  String? get regimentInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_page')
  String? get personalPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_wallet')
  String? get personalWallet => throw _privateConstructorUsedError;
  String? get twitter => throw _privateConstructorUsedError;
  String? get sigil => throw _privateConstructorUsedError;
  PhantomRegiment? get regiment => throw _privateConstructorUsedError;
  List<GhostProfileModel>? get ghosts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhantomProfileModelCopyWith<PhantomProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhantomProfileModelCopyWith<$Res> {
  factory $PhantomProfileModelCopyWith(
          PhantomProfileModel value, $Res Function(PhantomProfileModel) then) =
      _$PhantomProfileModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'phantom_id') String? phantomId,
      String? name,
      String? image,
      @JsonKey(name: 'personality_traits') List<String>? personalityTraits,
      @JsonKey(name: 'phantom_story') String? phantomStory,
      @JsonKey(name: 'regiment_info') String? regimentInfo,
      @JsonKey(name: 'personal_page') String? personalPage,
      @JsonKey(name: 'personal_wallet') String? personalWallet,
      String? twitter,
      String? sigil,
      PhantomRegiment? regiment,
      List<GhostProfileModel>? ghosts});

  $PhantomRegimentCopyWith<$Res>? get regiment;
}

/// @nodoc
class _$PhantomProfileModelCopyWithImpl<$Res>
    implements $PhantomProfileModelCopyWith<$Res> {
  _$PhantomProfileModelCopyWithImpl(this._value, this._then);

  final PhantomProfileModel _value;
  // ignore: unused_field
  final $Res Function(PhantomProfileModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? phantomId = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? personalityTraits = freezed,
    Object? phantomStory = freezed,
    Object? regimentInfo = freezed,
    Object? personalPage = freezed,
    Object? personalWallet = freezed,
    Object? twitter = freezed,
    Object? sigil = freezed,
    Object? regiment = freezed,
    Object? ghosts = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      phantomId: phantomId == freezed
          ? _value.phantomId
          : phantomId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      personalityTraits: personalityTraits == freezed
          ? _value.personalityTraits
          : personalityTraits // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      phantomStory: phantomStory == freezed
          ? _value.phantomStory
          : phantomStory // ignore: cast_nullable_to_non_nullable
              as String?,
      regimentInfo: regimentInfo == freezed
          ? _value.regimentInfo
          : regimentInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      personalPage: personalPage == freezed
          ? _value.personalPage
          : personalPage // ignore: cast_nullable_to_non_nullable
              as String?,
      personalWallet: personalWallet == freezed
          ? _value.personalWallet
          : personalWallet // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: twitter == freezed
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
      sigil: sigil == freezed
          ? _value.sigil
          : sigil // ignore: cast_nullable_to_non_nullable
              as String?,
      regiment: regiment == freezed
          ? _value.regiment
          : regiment // ignore: cast_nullable_to_non_nullable
              as PhantomRegiment?,
      ghosts: ghosts == freezed
          ? _value.ghosts
          : ghosts // ignore: cast_nullable_to_non_nullable
              as List<GhostProfileModel>?,
    ));
  }

  @override
  $PhantomRegimentCopyWith<$Res>? get regiment {
    if (_value.regiment == null) {
      return null;
    }

    return $PhantomRegimentCopyWith<$Res>(_value.regiment!, (value) {
      return _then(_value.copyWith(regiment: value));
    });
  }
}

/// @nodoc
abstract class _$$_PhantomProfileModelCopyWith<$Res>
    implements $PhantomProfileModelCopyWith<$Res> {
  factory _$$_PhantomProfileModelCopyWith(_$_PhantomProfileModel value,
          $Res Function(_$_PhantomProfileModel) then) =
      __$$_PhantomProfileModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'phantom_id') String? phantomId,
      String? name,
      String? image,
      @JsonKey(name: 'personality_traits') List<String>? personalityTraits,
      @JsonKey(name: 'phantom_story') String? phantomStory,
      @JsonKey(name: 'regiment_info') String? regimentInfo,
      @JsonKey(name: 'personal_page') String? personalPage,
      @JsonKey(name: 'personal_wallet') String? personalWallet,
      String? twitter,
      String? sigil,
      PhantomRegiment? regiment,
      List<GhostProfileModel>? ghosts});

  @override
  $PhantomRegimentCopyWith<$Res>? get regiment;
}

/// @nodoc
class __$$_PhantomProfileModelCopyWithImpl<$Res>
    extends _$PhantomProfileModelCopyWithImpl<$Res>
    implements _$$_PhantomProfileModelCopyWith<$Res> {
  __$$_PhantomProfileModelCopyWithImpl(_$_PhantomProfileModel _value,
      $Res Function(_$_PhantomProfileModel) _then)
      : super(_value, (v) => _then(v as _$_PhantomProfileModel));

  @override
  _$_PhantomProfileModel get _value => super._value as _$_PhantomProfileModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? phantomId = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? personalityTraits = freezed,
    Object? phantomStory = freezed,
    Object? regimentInfo = freezed,
    Object? personalPage = freezed,
    Object? personalWallet = freezed,
    Object? twitter = freezed,
    Object? sigil = freezed,
    Object? regiment = freezed,
    Object? ghosts = freezed,
  }) {
    return _then(_$_PhantomProfileModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      phantomId: phantomId == freezed
          ? _value.phantomId
          : phantomId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      personalityTraits: personalityTraits == freezed
          ? _value._personalityTraits
          : personalityTraits // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      phantomStory: phantomStory == freezed
          ? _value.phantomStory
          : phantomStory // ignore: cast_nullable_to_non_nullable
              as String?,
      regimentInfo: regimentInfo == freezed
          ? _value.regimentInfo
          : regimentInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      personalPage: personalPage == freezed
          ? _value.personalPage
          : personalPage // ignore: cast_nullable_to_non_nullable
              as String?,
      personalWallet: personalWallet == freezed
          ? _value.personalWallet
          : personalWallet // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: twitter == freezed
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
      sigil: sigil == freezed
          ? _value.sigil
          : sigil // ignore: cast_nullable_to_non_nullable
              as String?,
      regiment: regiment == freezed
          ? _value.regiment
          : regiment // ignore: cast_nullable_to_non_nullable
              as PhantomRegiment?,
      ghosts: ghosts == freezed
          ? _value._ghosts
          : ghosts // ignore: cast_nullable_to_non_nullable
              as List<GhostProfileModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhantomProfileModel implements _PhantomProfileModel {
  _$_PhantomProfileModel(
      {this.id,
      @JsonKey(name: 'phantom_id')
          this.phantomId,
      this.name,
      this.image,
      @JsonKey(name: 'personality_traits')
          final List<String>? personalityTraits,
      @JsonKey(name: 'phantom_story')
          this.phantomStory,
      @JsonKey(name: 'regiment_info')
          this.regimentInfo,
      @JsonKey(name: 'personal_page')
          this.personalPage,
      @JsonKey(name: 'personal_wallet')
          this.personalWallet,
      this.twitter,
      this.sigil,
      this.regiment,
      final List<GhostProfileModel>? ghosts})
      : _personalityTraits = personalityTraits,
        _ghosts = ghosts;

  factory _$_PhantomProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_PhantomProfileModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'phantom_id')
  final String? phantomId;
  @override
  final String? name;
  @override
  final String? image;
  final List<String>? _personalityTraits;
  @override
  @JsonKey(name: 'personality_traits')
  List<String>? get personalityTraits {
    final value = _personalityTraits;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'phantom_story')
  final String? phantomStory;
  @override
  @JsonKey(name: 'regiment_info')
  final String? regimentInfo;
  @override
  @JsonKey(name: 'personal_page')
  final String? personalPage;
  @override
  @JsonKey(name: 'personal_wallet')
  final String? personalWallet;
  @override
  final String? twitter;
  @override
  final String? sigil;
  @override
  final PhantomRegiment? regiment;
  final List<GhostProfileModel>? _ghosts;
  @override
  List<GhostProfileModel>? get ghosts {
    final value = _ghosts;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PhantomProfileModel(id: $id, phantomId: $phantomId, name: $name, image: $image, personalityTraits: $personalityTraits, phantomStory: $phantomStory, regimentInfo: $regimentInfo, personalPage: $personalPage, personalWallet: $personalWallet, twitter: $twitter, sigil: $sigil, regiment: $regiment, ghosts: $ghosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhantomProfileModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.phantomId, phantomId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other._personalityTraits, _personalityTraits) &&
            const DeepCollectionEquality()
                .equals(other.phantomStory, phantomStory) &&
            const DeepCollectionEquality()
                .equals(other.regimentInfo, regimentInfo) &&
            const DeepCollectionEquality()
                .equals(other.personalPage, personalPage) &&
            const DeepCollectionEquality()
                .equals(other.personalWallet, personalWallet) &&
            const DeepCollectionEquality().equals(other.twitter, twitter) &&
            const DeepCollectionEquality().equals(other.sigil, sigil) &&
            const DeepCollectionEquality().equals(other.regiment, regiment) &&
            const DeepCollectionEquality().equals(other._ghosts, _ghosts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(phantomId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(_personalityTraits),
      const DeepCollectionEquality().hash(phantomStory),
      const DeepCollectionEquality().hash(regimentInfo),
      const DeepCollectionEquality().hash(personalPage),
      const DeepCollectionEquality().hash(personalWallet),
      const DeepCollectionEquality().hash(twitter),
      const DeepCollectionEquality().hash(sigil),
      const DeepCollectionEquality().hash(regiment),
      const DeepCollectionEquality().hash(_ghosts));

  @JsonKey(ignore: true)
  @override
  _$$_PhantomProfileModelCopyWith<_$_PhantomProfileModel> get copyWith =>
      __$$_PhantomProfileModelCopyWithImpl<_$_PhantomProfileModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhantomProfileModelToJson(this);
  }
}

abstract class _PhantomProfileModel implements PhantomProfileModel {
  factory _PhantomProfileModel(
      {final int? id,
      @JsonKey(name: 'phantom_id')
          final String? phantomId,
      final String? name,
      final String? image,
      @JsonKey(name: 'personality_traits')
          final List<String>? personalityTraits,
      @JsonKey(name: 'phantom_story')
          final String? phantomStory,
      @JsonKey(name: 'regiment_info')
          final String? regimentInfo,
      @JsonKey(name: 'personal_page')
          final String? personalPage,
      @JsonKey(name: 'personal_wallet')
          final String? personalWallet,
      final String? twitter,
      final String? sigil,
      final PhantomRegiment? regiment,
      final List<GhostProfileModel>? ghosts}) = _$_PhantomProfileModel;

  factory _PhantomProfileModel.fromJson(Map<String, dynamic> json) =
      _$_PhantomProfileModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phantom_id')
  String? get phantomId => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'personality_traits')
  List<String>? get personalityTraits => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phantom_story')
  String? get phantomStory => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'regiment_info')
  String? get regimentInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'personal_page')
  String? get personalPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'personal_wallet')
  String? get personalWallet => throw _privateConstructorUsedError;
  @override
  String? get twitter => throw _privateConstructorUsedError;
  @override
  String? get sigil => throw _privateConstructorUsedError;
  @override
  PhantomRegiment? get regiment => throw _privateConstructorUsedError;
  @override
  List<GhostProfileModel>? get ghosts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PhantomProfileModelCopyWith<_$_PhantomProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
