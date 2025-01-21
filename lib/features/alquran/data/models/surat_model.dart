import 'package:alquran_app/features/alquran/data/models/ayat_model.dart';
import 'package:alquran_app/features/alquran/data/models/tafsir_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'surat_model.freezed.dart';
part 'surat_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class SuratModel with _$SuratModel {
  const factory SuratModel({
    required int nomor,
    required String nama,
    required String namaLatin,
    required int jumlahAyat,
    required String tempatTurun,
    required String arti,
    required String deskripsi,
    @JsonKey(name: 'ayat', includeFromJson: true, includeToJson: true)
    @Default([])
    List<AyatModel?> ayat,
    @JsonKey(name: 'tafsir', includeFromJson: true, includeToJson: true)
    @Default([])
    List<TafsirModel?> tafsir,
  }) = _SuratModel;

  factory SuratModel.fromJson(Map<String, dynamic> json) =>
      _$SuratModelFromJson(json);
}
