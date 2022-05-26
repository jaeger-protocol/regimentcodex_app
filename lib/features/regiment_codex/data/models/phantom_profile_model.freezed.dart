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
  String? get name => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  String? get sigil => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
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
      {String? name,
      String? about,
      String? sigil,
      int? number,
      List<GhostProfileModel>? ghosts});
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
    Object? name = freezed,
    Object? about = freezed,
    Object? sigil = freezed,
    Object? number = freezed,
    Object? ghosts = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      sigil: sigil == freezed
          ? _value.sigil
          : sigil // ignore: cast_nullable_to_non_nullable
              as String?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      ghosts: ghosts == freezed
          ? _value.ghosts
          : ghosts // ignore: cast_nullable_to_non_nullable
              as List<GhostProfileModel>?,
    ));
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
      {String? name,
      String? about,
      String? sigil,
      int? number,
      List<GhostProfileModel>? ghosts});
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
    Object? name = freezed,
    Object? about = freezed,
    Object? sigil = freezed,
    Object? number = freezed,
    Object? ghosts = freezed,
  }) {
    return _then(_$_PhantomProfileModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      sigil: sigil == freezed
          ? _value.sigil
          : sigil // ignore: cast_nullable_to_non_nullable
              as String?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {this.name,
      this.about,
      this.sigil,
      this.number,
      final List<GhostProfileModel>? ghosts})
      : _ghosts = ghosts;

  factory _$_PhantomProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_PhantomProfileModelFromJson(json);

  @override
  final String? name;
  @override
  final String? about;
  @override
  final String? sigil;
  @override
  final int? number;
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
    return 'PhantomProfileModel(name: $name, about: $about, sigil: $sigil, number: $number, ghosts: $ghosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhantomProfileModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.about, about) &&
            const DeepCollectionEquality().equals(other.sigil, sigil) &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other._ghosts, _ghosts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(about),
      const DeepCollectionEquality().hash(sigil),
      const DeepCollectionEquality().hash(number),
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
      {final String? name,
      final String? about,
      final String? sigil,
      final int? number,
      final List<GhostProfileModel>? ghosts}) = _$_PhantomProfileModel;

  factory _PhantomProfileModel.fromJson(Map<String, dynamic> json) =
      _$_PhantomProfileModel.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get about => throw _privateConstructorUsedError;
  @override
  String? get sigil => throw _privateConstructorUsedError;
  @override
  int? get number => throw _privateConstructorUsedError;
  @override
  List<GhostProfileModel>? get ghosts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PhantomProfileModelCopyWith<_$_PhantomProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
