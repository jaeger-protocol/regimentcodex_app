// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phantom_preview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhantomPreviewModel _$PhantomPreviewModelFromJson(Map<String, dynamic> json) {
  return _PhantomPreviewModel.fromJson(json);
}

/// @nodoc
mixin _$PhantomPreviewModel {
  String? get name => throw _privateConstructorUsedError;
  String? get sigil => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhantomPreviewModelCopyWith<PhantomPreviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhantomPreviewModelCopyWith<$Res> {
  factory $PhantomPreviewModelCopyWith(
          PhantomPreviewModel value, $Res Function(PhantomPreviewModel) then) =
      _$PhantomPreviewModelCopyWithImpl<$Res>;
  $Res call({String? name, String? sigil, int? number});
}

/// @nodoc
class _$PhantomPreviewModelCopyWithImpl<$Res>
    implements $PhantomPreviewModelCopyWith<$Res> {
  _$PhantomPreviewModelCopyWithImpl(this._value, this._then);

  final PhantomPreviewModel _value;
  // ignore: unused_field
  final $Res Function(PhantomPreviewModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? sigil = freezed,
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sigil: sigil == freezed
          ? _value.sigil
          : sigil // ignore: cast_nullable_to_non_nullable
              as String?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_PhantomPreviewModelCopyWith<$Res>
    implements $PhantomPreviewModelCopyWith<$Res> {
  factory _$$_PhantomPreviewModelCopyWith(_$_PhantomPreviewModel value,
          $Res Function(_$_PhantomPreviewModel) then) =
      __$$_PhantomPreviewModelCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? sigil, int? number});
}

/// @nodoc
class __$$_PhantomPreviewModelCopyWithImpl<$Res>
    extends _$PhantomPreviewModelCopyWithImpl<$Res>
    implements _$$_PhantomPreviewModelCopyWith<$Res> {
  __$$_PhantomPreviewModelCopyWithImpl(_$_PhantomPreviewModel _value,
      $Res Function(_$_PhantomPreviewModel) _then)
      : super(_value, (v) => _then(v as _$_PhantomPreviewModel));

  @override
  _$_PhantomPreviewModel get _value => super._value as _$_PhantomPreviewModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? sigil = freezed,
    Object? number = freezed,
  }) {
    return _then(_$_PhantomPreviewModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sigil: sigil == freezed
          ? _value.sigil
          : sigil // ignore: cast_nullable_to_non_nullable
              as String?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhantomPreviewModel implements _PhantomPreviewModel {
  _$_PhantomPreviewModel({this.name, this.sigil, this.number});

  factory _$_PhantomPreviewModel.fromJson(Map<String, dynamic> json) =>
      _$$_PhantomPreviewModelFromJson(json);

  @override
  final String? name;
  @override
  final String? sigil;
  @override
  final int? number;

  @override
  String toString() {
    return 'PhantomPreviewModel(name: $name, sigil: $sigil, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhantomPreviewModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.sigil, sigil) &&
            const DeepCollectionEquality().equals(other.number, number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(sigil),
      const DeepCollectionEquality().hash(number));

  @JsonKey(ignore: true)
  @override
  _$$_PhantomPreviewModelCopyWith<_$_PhantomPreviewModel> get copyWith =>
      __$$_PhantomPreviewModelCopyWithImpl<_$_PhantomPreviewModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhantomPreviewModelToJson(this);
  }
}

abstract class _PhantomPreviewModel implements PhantomPreviewModel {
  factory _PhantomPreviewModel(
      {final String? name,
      final String? sigil,
      final int? number}) = _$_PhantomPreviewModel;

  factory _PhantomPreviewModel.fromJson(Map<String, dynamic> json) =
      _$_PhantomPreviewModel.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get sigil => throw _privateConstructorUsedError;
  @override
  int? get number => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PhantomPreviewModelCopyWith<_$_PhantomPreviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
