// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ayat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Ayat _$AyatFromJson(Map<String, dynamic> json) {
  return _Ayat.fromJson(json);
}

/// @nodoc
mixin _$Ayat {
  int get nomorAyat => throw _privateConstructorUsedError;
  String get teksArab => throw _privateConstructorUsedError;
  String get teksLatin => throw _privateConstructorUsedError;
  String get teksIndonesia => throw _privateConstructorUsedError;

  /// Serializes this Ayat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ayat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AyatCopyWith<Ayat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyatCopyWith<$Res> {
  factory $AyatCopyWith(Ayat value, $Res Function(Ayat) then) =
      _$AyatCopyWithImpl<$Res, Ayat>;
  @useResult
  $Res call(
      {int nomorAyat, String teksArab, String teksLatin, String teksIndonesia});
}

/// @nodoc
class _$AyatCopyWithImpl<$Res, $Val extends Ayat>
    implements $AyatCopyWith<$Res> {
  _$AyatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ayat
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
abstract class _$$AyatImplCopyWith<$Res> implements $AyatCopyWith<$Res> {
  factory _$$AyatImplCopyWith(
          _$AyatImpl value, $Res Function(_$AyatImpl) then) =
      __$$AyatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int nomorAyat, String teksArab, String teksLatin, String teksIndonesia});
}

/// @nodoc
class __$$AyatImplCopyWithImpl<$Res>
    extends _$AyatCopyWithImpl<$Res, _$AyatImpl>
    implements _$$AyatImplCopyWith<$Res> {
  __$$AyatImplCopyWithImpl(_$AyatImpl _value, $Res Function(_$AyatImpl) _then)
      : super(_value, _then);

  /// Create a copy of Ayat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomorAyat = null,
    Object? teksArab = null,
    Object? teksLatin = null,
    Object? teksIndonesia = null,
  }) {
    return _then(_$AyatImpl(
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
class _$AyatImpl with DiagnosticableTreeMixin implements _Ayat {
  const _$AyatImpl(
      {required this.nomorAyat,
      required this.teksArab,
      required this.teksLatin,
      required this.teksIndonesia});

  factory _$AyatImpl.fromJson(Map<String, dynamic> json) =>
      _$$AyatImplFromJson(json);

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
    return 'Ayat(nomorAyat: $nomorAyat, teksArab: $teksArab, teksLatin: $teksLatin, teksIndonesia: $teksIndonesia)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Ayat'))
      ..add(DiagnosticsProperty('nomorAyat', nomorAyat))
      ..add(DiagnosticsProperty('teksArab', teksArab))
      ..add(DiagnosticsProperty('teksLatin', teksLatin))
      ..add(DiagnosticsProperty('teksIndonesia', teksIndonesia));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyatImpl &&
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

  /// Create a copy of Ayat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AyatImplCopyWith<_$AyatImpl> get copyWith =>
      __$$AyatImplCopyWithImpl<_$AyatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AyatImplToJson(
      this,
    );
  }
}

abstract class _Ayat implements Ayat {
  const factory _Ayat(
      {required final int nomorAyat,
      required final String teksArab,
      required final String teksLatin,
      required final String teksIndonesia}) = _$AyatImpl;

  factory _Ayat.fromJson(Map<String, dynamic> json) = _$AyatImpl.fromJson;

  @override
  int get nomorAyat;
  @override
  String get teksArab;
  @override
  String get teksLatin;
  @override
  String get teksIndonesia;

  /// Create a copy of Ayat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AyatImplCopyWith<_$AyatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
