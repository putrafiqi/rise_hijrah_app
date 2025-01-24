import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ayat.freezed.dart';
part 'ayat.g.dart';

@freezed
class Ayat with _$Ayat {
  const factory Ayat({
    required int nomorAyat,
    required String teksArab,
    required String teksLatin,
    required String teksIndonesia,
  }) = _Ayat;

  factory Ayat.fromJson(Map<String, dynamic> json) => _$AyatFromJson(json);
}
