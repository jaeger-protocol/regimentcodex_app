// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ghost_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GhostProfileModel _$GhostProfileModelFromJson(Map<String, dynamic> json) {
  return _GhostProfileModel.fromJson(json);
}

/// @nodoc
mixin _$GhostProfileModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get openseaLink => throw _privateConstructorUsedError;
  String? get holderLink => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<GhostAttributesModel>? get attributes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GhostProfileModelCopyWith<GhostProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GhostProfileModelCopyWith<$Res> {
  factory $GhostProfileModelCopyWith(
          GhostProfileModel value, $Res Function(GhostProfileModel) then) =
      _$GhostProfileModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? image,
      String? openseaLink,
      String? holderLink,
      String? description,
      List<GhostAttributesModel>? attributes});
}

/// @nodoc
class _$GhostProfileModelCopyWithImpl<$Res>
    implements $GhostProfileModelCopyWith<$Res> {
  _$GhostProfileModelCopyWithImpl(this._value, this._then);

  final GhostProfileModel _value;
  // ignore: unused_field
  final $Res Function(GhostProfileModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? openseaLink = freezed,
    Object? holderLink = freezed,
    Object? description = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      openseaLink: openseaLink == freezed
          ? _value.openseaLink
          : openseaLink // ignore: cast_nullable_to_non_nullable
              as String?,
      holderLink: holderLink == freezed
          ? _value.holderLink
          : holderLink // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<GhostAttributesModel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_GhostProfileModelCopyWith<$Res>
    implements $GhostProfileModelCopyWith<$Res> {
  factory _$$_GhostProfileModelCopyWith(_$_GhostProfileModel value,
          $Res Function(_$_GhostProfileModel) then) =
      __$$_GhostProfileModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? image,
      String? openseaLink,
      String? holderLink,
      String? description,
      List<GhostAttributesModel>? attributes});
}

/// @nodoc
class __$$_GhostProfileModelCopyWithImpl<$Res>
    extends _$GhostProfileModelCopyWithImpl<$Res>
    implements _$$_GhostProfileModelCopyWith<$Res> {
  __$$_GhostProfileModelCopyWithImpl(
      _$_GhostProfileModel _value, $Res Function(_$_GhostProfileModel) _then)
      : super(_value, (v) => _then(v as _$_GhostProfileModel));

  @override
  _$_GhostProfileModel get _value => super._value as _$_GhostProfileModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? openseaLink = freezed,
    Object? holderLink = freezed,
    Object? description = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$_GhostProfileModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      openseaLink: openseaLink == freezed
          ? _value.openseaLink
          : openseaLink // ignore: cast_nullable_to_non_nullable
              as String?,
      holderLink: holderLink == freezed
          ? _value.holderLink
          : holderLink // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: attributes == freezed
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<GhostAttributesModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GhostProfileModel implements _GhostProfileModel {
  _$_GhostProfileModel(
      {this.id,
      this.name,
      this.image,
      this.openseaLink,
      this.holderLink,
      this.description,
      final List<GhostAttributesModel>? attributes})
      : _attributes = attributes;

  factory _$_GhostProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_GhostProfileModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? openseaLink;
  @override
  final String? holderLink;
  @override
  final String? description;
  final List<GhostAttributesModel>? _attributes;
  @override
  List<GhostAttributesModel>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GhostProfileModel(id: $id, name: $name, image: $image, openseaLink: $openseaLink, holderLink: $holderLink, description: $description, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GhostProfileModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.openseaLink, openseaLink) &&
            const DeepCollectionEquality()
                .equals(other.holderLink, holderLink) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(openseaLink),
      const DeepCollectionEquality().hash(holderLink),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  _$$_GhostProfileModelCopyWith<_$_GhostProfileModel> get copyWith =>
      __$$_GhostProfileModelCopyWithImpl<_$_GhostProfileModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GhostProfileModelToJson(this);
  }
}

abstract class _GhostProfileModel implements GhostProfileModel {
  factory _GhostProfileModel(
      {final int? id,
      final String? name,
      final String? image,
      final String? openseaLink,
      final String? holderLink,
      final String? description,
      final List<GhostAttributesModel>? attributes}) = _$_GhostProfileModel;

  factory _GhostProfileModel.fromJson(Map<String, dynamic> json) =
      _$_GhostProfileModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  String? get openseaLink => throw _privateConstructorUsedError;
  @override
  String? get holderLink => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  List<GhostAttributesModel>? get attributes =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GhostProfileModelCopyWith<_$_GhostProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
