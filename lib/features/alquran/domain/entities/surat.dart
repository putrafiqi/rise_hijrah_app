import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../alquran.dart' show Ayat, Tafsir;

part 'surat.freezed.dart';
part 'surat.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Surat with _$Surat {
  @JsonSerializable(explicitToJson: true)
  const factory Surat({
    required int nomor,
    required String nama,
    required String namaLatin,
    required int jumlahAyat,
    required String tempatTurun,
    required String arti,
    required String deskripsi,
    @Default([]) List<Ayat> ayat,
    @Default([]) List<Tafsir> tafsir,
  }) = _Surat;

  factory Surat.fromJson(Map<String, dynamic> json) => _$SuratFromJson(json);
}
