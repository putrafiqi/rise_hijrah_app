// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ayat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AyatModel _$AyatModelFromJson(Map<String, dynamic> json) {
  return _AyatModel.fromJson(json);
}

/// @nodoc
mixin _$AyatModel {
  int get nomorAyat => throw _privateConstructorUsedError;
  String get teksArab => throw _privateConstructorUsedError;
  String get teksLatin => throw _privateConstructorUsedError;
  String get teksIndonesia => throw _privateConstructorUsedError;

  /// Serializes this AyatModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AyatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AyatModelCopyWith<AyatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyatModelCopyWith<$Res> {
  factory $AyatModelCopyWith(AyatModel value, $Res Function(AyatModel) then) =
      _$AyatModelCopyWithImpl<$Res, AyatModel>;
  @useResult
  $Res call(
      {int nomorAyat, String teksArab, String teksLatin, String teksIndonesia});
}

/// @nodoc
class _$AyatModelCopyWithImpl<$Res, $Val extends AyatModel>
    implements $AyatModelCopyWith<$Res> {
  _$AyatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AyatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomorAyat = null,
    Object? teksArab = null,
    Object? teksLatin = null,
    Object? teksIndonesia = null,
  }) {
    return _then(_value.copyWith(
      nomorAyat: null == nomorAyat
          ? _value.nomorAyat
          : nomorAyat // ignore: cast_nullable_to_non_nullable
              as int,
      teksArab: null == teksArab
          ? _value.teksArab
          : teksArab // ignore: cast_nullable_to_non_nullable
              as String,
      teksLatin: null == teksLatin
          ? _value.teksLatin
          : teksLatin // ignore: cast_nullable_to_non_nullable
              as String,
      teksIndonesia: null == teksIndonesia
          ? _value.teksIndonesia
          : teksIndonesia // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AyatModelImplCopyWith<$Res>
    implements $AyatModelCopyWith<$Res> {
  factory _$$AyatModelImplCopyWith(
          _$AyatModelImpl value, $Res Function(_$AyatModelImpl) then) =
      __$$AyatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int nomorAyat, String teksArab, String teksLatin, String teksIndonesia});
}

/// @nodoc
class __$$AyatModelImplCopyWithImpl<$Res>
    extends _$AyatModelCopyWithImpl<$Res, _$AyatModelImpl>
    implements _$$AyatModelImplCopyWith<$Res> {
  __$$AyatModelImplCopyWithImpl(
      _$AyatModelImpl _value, $Res Function(_$AyatModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AyatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomorAyat = null,
    Object? teksArab = null,
    Object? teksLatin = null,
    Object? teksIndonesia = null,
  }) {
    return _then(_$AyatModelImpl(
      nomorAyat: null == nomorAyat
          ? _value.nomorAyat
          : nomorAyat // ignore: cast_nullable_to_non_nullable
              as int,
      teksArab: null == teksArab
          ? _value.teksArab
          : teksArab // ignore: cast_nullable_to_non_nullable
              as String,
      teksLatin: null == teksLatin
          ? _value.teksLatin
          : teksLatin // ignore: cast_nullable_to_non_nullable
              as String,
      teksIndonesia: null == teksIndonesia
          ? _value.teksIndonesia
          : teksIndonesia // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AyatModelImpl with DiagnosticableTreeMixin implements _AyatModel {
  const _$AyatModelImpl(
      {required this.nomorAyat,
      required this.teksArab,
      required this.teksLatin,
      required this.teksIndonesia});

  factory _$AyatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AyatModelImplFromJson(json);

  @override
  final int nomorAyat;
  @override
  final String teksArab;
  @override
  final String teksLatin;
  @override
  final String teksIndonesia;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AyatModel(nomorAyat: $nomorAyat, teksArab: $teksArab, teksLatin: $teksLatin, teksIndonesia: $teksIndonesia)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AyatModel'))
      ..add(DiagnosticsProperty('nomorAyat', nomorAyat))
      ..add(DiagnosticsProperty('teksArab', teksArab))
      ..add(DiagnosticsProperty('teksLatin', teksLatin))
      ..add(DiagnosticsProperty('teksIndonesia', teksIndonesia));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyatModelImpl &&
            (identical(other.nomorAyat, nomorAyat) ||
                other.nomorAyat == nomorAyat) &&
            (identical(other.teksArab, teksArab) ||
                other.teksArab == teksArab) &&
            (identical(other.teksLatin, teksLatin) ||
                other.teksLatin == teksLatin) &&
            (identical(other.teksIndonesia, teksIndonesia) ||
                other.teksIndonesia == teksIndonesia));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nomorAyat, teksArab, teksLatin, teksIndonesia);

  /// Create a copy of AyatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AyatModelImplCopyWith<_$AyatModelImpl> get copyWith =>
      __$$AyatModelImplCopyWithImpl<_$AyatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AyatModelImplToJson(
      this,
    );
  }
}

abstract class _AyatModel implements AyatModel {
  const factory _AyatModel(
      {required final int nomorAyat,
      required final String teksArab,
      required final String teksLatin,
      required final String teksIndonesia}) = _$AyatModelImpl;

  factory _AyatModel.fromJson(Map<String, dynamic> json) =
      _$AyatModelImpl.fromJson;

  @override
  int get nomorAyat;
  @override
  String get teksArab;
  @override
  String get teksLatin;
  @override
  String get teksIndonesia;

  /// Create a copy of AyatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AyatModelImplCopyWith<_$AyatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
