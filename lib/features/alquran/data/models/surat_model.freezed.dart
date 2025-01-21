// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SuratModel _$SuratModelFromJson(Map<String, dynamic> json) {
  return _SuratModel.fromJson(json);
}

/// @nodoc
mixin _$SuratModel {
  int get nomor => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get namaLatin => throw _privateConstructorUsedError;
  int get jumlahAyat => throw _privateConstructorUsedError;
  String get tempatTurun => throw _privateConstructorUsedError;
  String get arti => throw _privateConstructorUsedError;
  String get deskripsi => throw _privateConstructorUsedError;
  List<AyatModel> get ayat => throw _privateConstructorUsedError;
  List<TafsirModel> get tafsir => throw _privateConstructorUsedError;

  /// Serializes this SuratModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuratModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuratModelCopyWith<SuratModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuratModelCopyWith<$Res> {
  factory $SuratModelCopyWith(
          SuratModel value, $Res Function(SuratModel) then) =
      _$SuratModelCopyWithImpl<$Res, SuratModel>;
  @useResult
  $Res call(
      {int nomor,
      String nama,
      String namaLatin,
      int jumlahAyat,
      String tempatTurun,
      String arti,
      String deskripsi,
      List<AyatModel> ayat,
      List<TafsirModel> tafsir});
}

/// @nodoc
class _$SuratModelCopyWithImpl<$Res, $Val extends SuratModel>
    implements $SuratModelCopyWith<$Res> {
  _$SuratModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuratModel
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
              as List<AyatModel>,
      tafsir: null == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as List<TafsirModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuratModelImplCopyWith<$Res>
    implements $SuratModelCopyWith<$Res> {
  factory _$$SuratModelImplCopyWith(
          _$SuratModelImpl value, $Res Function(_$SuratModelImpl) then) =
      __$$SuratModelImplCopyWithImpl<$Res>;
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
      List<AyatModel> ayat,
      List<TafsirModel> tafsir});
}

/// @nodoc
class __$$SuratModelImplCopyWithImpl<$Res>
    extends _$SuratModelCopyWithImpl<$Res, _$SuratModelImpl>
    implements _$$SuratModelImplCopyWith<$Res> {
  __$$SuratModelImplCopyWithImpl(
      _$SuratModelImpl _value, $Res Function(_$SuratModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuratModel
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
    return _then(_$SuratModelImpl(
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
              as List<AyatModel>,
      tafsir: null == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as List<TafsirModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SuratModelImpl with DiagnosticableTreeMixin implements _SuratModel {
  const _$SuratModelImpl(
      {required this.nomor,
      required this.nama,
      required this.namaLatin,
      required this.jumlahAyat,
      required this.tempatTurun,
      required this.arti,
      required this.deskripsi,
      this.ayat = const [],
      this.tafsir = const []});

  factory _$SuratModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuratModelImplFromJson(json);

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
  final List<AyatModel> ayat;
  @override
  @JsonKey()
  final List<TafsirModel> tafsir;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SuratModel(nomor: $nomor, nama: $nama, namaLatin: $namaLatin, jumlahAyat: $jumlahAyat, tempatTurun: $tempatTurun, arti: $arti, deskripsi: $deskripsi, ayat: $ayat, tafsir: $tafsir)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SuratModel'))
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
            other is _$SuratModelImpl &&
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

  /// Create a copy of SuratModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuratModelImplCopyWith<_$SuratModelImpl> get copyWith =>
      __$$SuratModelImplCopyWithImpl<_$SuratModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuratModelImplToJson(
      this,
    );
  }
}

abstract class _SuratModel implements SuratModel {
  const factory _SuratModel(
      {required final int nomor,
      required final String nama,
      required final String namaLatin,
      required final int jumlahAyat,
      required final String tempatTurun,
      required final String arti,
      required final String deskripsi,
      final List<AyatModel> ayat,
      final List<TafsirModel> tafsir}) = _$SuratModelImpl;

  factory _SuratModel.fromJson(Map<String, dynamic> json) =
      _$SuratModelImpl.fromJson;

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
  List<AyatModel> get ayat;
  @override
  List<TafsirModel> get tafsir;

  /// Create a copy of SuratModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuratModelImplCopyWith<_$SuratModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
