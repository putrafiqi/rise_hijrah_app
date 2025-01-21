// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Surat _$SuratFromJson(Map<String, dynamic> json) {
  return _Surat.fromJson(json);
}

/// @nodoc
mixin _$Surat {
  int get nomor => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get namaLatin => throw _privateConstructorUsedError;
  int get jumlahAyat => throw _privateConstructorUsedError;
  String get tempatTurun => throw _privateConstructorUsedError;
  String get arti => throw _privateConstructorUsedError;
  String get deskripsi => throw _privateConstructorUsedError;
  List<Ayat> get ayat => throw _privateConstructorUsedError;
  List<Tafsir> get tafsir => throw _privateConstructorUsedError;

  /// Serializes this Surat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Surat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuratCopyWith<Surat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuratCopyWith<$Res> {
  factory $SuratCopyWith(Surat value, $Res Function(Surat) then) =
      _$SuratCopyWithImpl<$Res, Surat>;
  @useResult
  $Res call(
      {int nomor,
      String nama,
      String namaLatin,
      int jumlahAyat,
      String tempatTurun,
      String arti,
      String deskripsi,
      List<Ayat> ayat,
      List<Tafsir> tafsir});
}

/// @nodoc
class _$SuratCopyWithImpl<$Res, $Val extends Surat>
    implements $SuratCopyWith<$Res> {
  _$SuratCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Surat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomor = null,
    Object? nama = null,
    Object? namaLatin = null,
    Object? jumlahAyat = null,
    Object? tempatTurun = null,
    Object? arti = null,
    Object? deskripsi = null,
    Object? ayat = null,
    Object? tafsir = null,
  }) {
    return _then(_value.copyWith(
      nomor: null == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      namaLatin: null == namaLatin
          ? _value.namaLatin
          : namaLatin // ignore: cast_nullable_to_non_nullable
              as String,
      jumlahAyat: null == jumlahAyat
          ? _value.jumlahAyat
          : jumlahAyat // ignore: cast_nullable_to_non_nullable
              as int,
      tempatTurun: null == tempatTurun
          ? _value.tempatTurun
          : tempatTurun // ignore: cast_nullable_to_non_nullable
              as String,
      arti: null == arti
          ? _value.arti
          : arti // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      ayat: null == ayat
          ? _value.ayat
          : ayat // ignore: cast_nullable_to_non_nullable
              as List<Ayat>,
      tafsir: null == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as List<Tafsir>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuratImplCopyWith<$Res> implements $SuratCopyWith<$Res> {
  factory _$$SuratImplCopyWith(
          _$SuratImpl value, $Res Function(_$SuratImpl) then) =
      __$$SuratImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int nomor,
      String nama,
      String namaLatin,
      int jumlahAyat,
      String tempatTurun,
      String arti,
      String deskripsi,
      List<Ayat> ayat,
      List<Tafsir> tafsir});
}

/// @nodoc
class __$$SuratImplCopyWithImpl<$Res>
    extends _$SuratCopyWithImpl<$Res, _$SuratImpl>
    implements _$$SuratImplCopyWith<$Res> {
  __$$SuratImplCopyWithImpl(
      _$SuratImpl _value, $Res Function(_$SuratImpl) _then)
      : super(_value, _then);

  /// Create a copy of Surat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomor = null,
    Object? nama = null,
    Object? namaLatin = null,
    Object? jumlahAyat = null,
    Object? tempatTurun = null,
    Object? arti = null,
    Object? deskripsi = null,
    Object? ayat = null,
    Object? tafsir = null,
  }) {
    return _then(_$SuratImpl(
      nomor: null == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      namaLatin: null == namaLatin
          ? _value.namaLatin
          : namaLatin // ignore: cast_nullable_to_non_nullable
              as String,
      jumlahAyat: null == jumlahAyat
          ? _value.jumlahAyat
          : jumlahAyat // ignore: cast_nullable_to_non_nullable
              as int,
      tempatTurun: null == tempatTurun
          ? _value.tempatTurun
          : tempatTurun // ignore: cast_nullable_to_non_nullable
              as String,
      arti: null == arti
          ? _value.arti
          : arti // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      ayat: null == ayat
          ? _value.ayat
          : ayat // ignore: cast_nullable_to_non_nullable
              as List<Ayat>,
      tafsir: null == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as List<Tafsir>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SuratImpl with DiagnosticableTreeMixin implements _Surat {
  const _$SuratImpl(
      {required this.nomor,
      required this.nama,
      required this.namaLatin,
      required this.jumlahAyat,
      required this.tempatTurun,
      required this.arti,
      required this.deskripsi,
      this.ayat = const [],
      this.tafsir = const []});

  factory _$SuratImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuratImplFromJson(json);

  @override
  final int nomor;
  @override
  final String nama;
  @override
  final String namaLatin;
  @override
  final int jumlahAyat;
  @override
  final String tempatTurun;
  @override
  final String arti;
  @override
  final String deskripsi;
  @override
  @JsonKey()
  final List<Ayat> ayat;
  @override
  @JsonKey()
  final List<Tafsir> tafsir;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Surat(nomor: $nomor, nama: $nama, namaLatin: $namaLatin, jumlahAyat: $jumlahAyat, tempatTurun: $tempatTurun, arti: $arti, deskripsi: $deskripsi, ayat: $ayat, tafsir: $tafsir)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Surat'))
      ..add(DiagnosticsProperty('nomor', nomor))
      ..add(DiagnosticsProperty('nama', nama))
      ..add(DiagnosticsProperty('namaLatin', namaLatin))
      ..add(DiagnosticsProperty('jumlahAyat', jumlahAyat))
      ..add(DiagnosticsProperty('tempatTurun', tempatTurun))
      ..add(DiagnosticsProperty('arti', arti))
      ..add(DiagnosticsProperty('deskripsi', deskripsi))
      ..add(DiagnosticsProperty('ayat', ayat))
      ..add(DiagnosticsProperty('tafsir', tafsir));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuratImpl &&
            (identical(other.nomor, nomor) || other.nomor == nomor) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.namaLatin, namaLatin) ||
                other.namaLatin == namaLatin) &&
            (identical(other.jumlahAyat, jumlahAyat) ||
                other.jumlahAyat == jumlahAyat) &&
            (identical(other.tempatTurun, tempatTurun) ||
                other.tempatTurun == tempatTurun) &&
            (identical(other.arti, arti) || other.arti == arti) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            const DeepCollectionEquality().equals(other.ayat, ayat) &&
            const DeepCollectionEquality().equals(other.tafsir, tafsir));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nomor,
      nama,
      namaLatin,
      jumlahAyat,
      tempatTurun,
      arti,
      deskripsi,
      const DeepCollectionEquality().hash(ayat),
      const DeepCollectionEquality().hash(tafsir));

  /// Create a copy of Surat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuratImplCopyWith<_$SuratImpl> get copyWith =>
      __$$SuratImplCopyWithImpl<_$SuratImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuratImplToJson(
      this,
    );
  }
}

abstract class _Surat implements Surat {
  const factory _Surat(
      {required final int nomor,
      required final String nama,
      required final String namaLatin,
      required final int jumlahAyat,
      required final String tempatTurun,
      required final String arti,
      required final String deskripsi,
      final List<Ayat> ayat,
      final List<Tafsir> tafsir}) = _$SuratImpl;

  factory _Surat.fromJson(Map<String, dynamic> json) = _$SuratImpl.fromJson;

  @override
  int get nomor;
  @override
  String get nama;
  @override
  String get namaLatin;
  @override
  int get jumlahAyat;
  @override
  String get tempatTurun;
  @override
  String get arti;
  @override
  String get deskripsi;
  @override
  List<Ayat> get ayat;
  @override
  List<Tafsir> get tafsir;

  /// Create a copy of Surat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuratImplCopyWith<_$SuratImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
