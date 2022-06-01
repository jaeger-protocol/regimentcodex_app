// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ghost_traits_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GhostAttributesModel _$GhostAttributesModelFromJson(Map<String, dynamic> json) {
  return _GhostAttributesModel.fromJson(json);
}

/// @nodoc
mixin _$GhostAttributesModel {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'trait_type')
  String? get traitType => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GhostAttributesModelCopyWith<GhostAttributesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GhostAttributesModelCopyWith<$Res> {
  factory $GhostAttributesModelCopyWith(GhostAttributesModel value,
          $Res Function(GhostAttributesModel) then) =
      _$GhostAttributesModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'trait_type') String? traitType,
      String? value});
}

/// @nodoc
class _$GhostAttributesModelCopyWithImpl<$Res>
    implements $GhostAttributesModelCopyWith<$Res> {
  _$GhostAttributesModelCopyWithImpl(this._value, this._then);

  final GhostAttributesModel _value;
  // ignore: unused_field
  final $Res Function(GhostAttributesModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? traitType = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      traitType: traitType == freezed
          ? _value.traitType
          : traitType // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GhostAttributesModelCopyWith<$Res>
    implements $GhostAttributesModelCopyWith<$Res> {
  factory _$$_GhostAttributesModelCopyWith(_$_GhostAttributesModel value,
          $Res Function(_$_GhostAttributesModel) then) =
      __$$_GhostAttributesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'trait_type') String? traitType,
      String? value});
}

/// @nodoc
class __$$_GhostAttributesModelCopyWithImpl<$Res>
    extends _$GhostAttributesModelCopyWithImpl<$Res>
    implements _$$_GhostAttributesModelCopyWith<$Res> {
  __$$_GhostAttributesModelCopyWithImpl(_$_GhostAttributesModel _value,
      $Res Function(_$_GhostAttributesModel) _then)
      : super(_value, (v) => _then(v as _$_GhostAttributesModel));

  @override
  _$_GhostAttributesModel get _value => super._value as _$_GhostAttributesModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? traitType = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_GhostAttributesModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      traitType: traitType == freezed
          ? _value.traitType
          : traitType // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GhostAttributesModel implements _GhostAttributesModel {
  _$_GhostAttributesModel(
      {this.id, @JsonKey(name: 'trait_type') this.traitType, this.value});

  factory _$_GhostAttributesModel.fromJson(Map<String, dynamic> json) =>
      _$$_GhostAttributesModelFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'trait_type')
  final String? traitType;
  @override
  final String? value;

  @override
  String toString() {
    return 'GhostAttributesModel(id: $id, traitType: $traitType, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GhostAttributesModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.traitType, traitType) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(traitType),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_GhostAttributesModelCopyWith<_$_GhostAttributesModel> get copyWith =>
      __$$_GhostAttributesModelCopyWithImpl<_$_GhostAttributesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GhostAttributesModelToJson(this);
  }
}

abstract class _GhostAttributesModel implements GhostAttributesModel {
  factory _GhostAttributesModel(
      {final String? id,
      @JsonKey(name: 'trait_type') final String? traitType,
      final String? value}) = _$_GhostAttributesModel;

  factory _GhostAttributesModel.fromJson(Map<String, dynamic> json) =
      _$_GhostAttributesModel.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'trait_type')
  String? get traitType => throw _privateConstructorUsedError;
  @override
  String? get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GhostAttributesModelCopyWith<_$_GhostAttributesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
