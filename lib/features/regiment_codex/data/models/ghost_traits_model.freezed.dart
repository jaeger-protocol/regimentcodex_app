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

GhostTraitsModel _$GhostTraitsModelFromJson(Map<String, dynamic> json) {
  return _GhostTraitsModel.fromJson(json);
}

/// @nodoc
mixin _$GhostTraitsModel {
  String? get name => throw _privateConstructorUsedError;
  int? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GhostTraitsModelCopyWith<GhostTraitsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GhostTraitsModelCopyWith<$Res> {
  factory $GhostTraitsModelCopyWith(
          GhostTraitsModel value, $Res Function(GhostTraitsModel) then) =
      _$GhostTraitsModelCopyWithImpl<$Res>;
  $Res call({String? name, int? value});
}

/// @nodoc
class _$GhostTraitsModelCopyWithImpl<$Res>
    implements $GhostTraitsModelCopyWith<$Res> {
  _$GhostTraitsModelCopyWithImpl(this._value, this._then);

  final GhostTraitsModel _value;
  // ignore: unused_field
  final $Res Function(GhostTraitsModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_GhostTraitsModelCopyWith<$Res>
    implements $GhostTraitsModelCopyWith<$Res> {
  factory _$$_GhostTraitsModelCopyWith(
          _$_GhostTraitsModel value, $Res Function(_$_GhostTraitsModel) then) =
      __$$_GhostTraitsModelCopyWithImpl<$Res>;
  @override
  $Res call({String? name, int? value});
}

/// @nodoc
class __$$_GhostTraitsModelCopyWithImpl<$Res>
    extends _$GhostTraitsModelCopyWithImpl<$Res>
    implements _$$_GhostTraitsModelCopyWith<$Res> {
  __$$_GhostTraitsModelCopyWithImpl(
      _$_GhostTraitsModel _value, $Res Function(_$_GhostTraitsModel) _then)
      : super(_value, (v) => _then(v as _$_GhostTraitsModel));

  @override
  _$_GhostTraitsModel get _value => super._value as _$_GhostTraitsModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_GhostTraitsModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GhostTraitsModel implements _GhostTraitsModel {
  _$_GhostTraitsModel({this.name, this.value});

  factory _$_GhostTraitsModel.fromJson(Map<String, dynamic> json) =>
      _$$_GhostTraitsModelFromJson(json);

  @override
  final String? name;
  @override
  final int? value;

  @override
  String toString() {
    return 'GhostTraitsModel(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GhostTraitsModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_GhostTraitsModelCopyWith<_$_GhostTraitsModel> get copyWith =>
      __$$_GhostTraitsModelCopyWithImpl<_$_GhostTraitsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GhostTraitsModelToJson(this);
  }
}

abstract class _GhostTraitsModel implements GhostTraitsModel {
  factory _GhostTraitsModel({final String? name, final int? value}) =
      _$_GhostTraitsModel;

  factory _GhostTraitsModel.fromJson(Map<String, dynamic> json) =
      _$_GhostTraitsModel.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GhostTraitsModelCopyWith<_$_GhostTraitsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
