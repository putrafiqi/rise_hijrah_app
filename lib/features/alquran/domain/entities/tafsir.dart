import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'tafsir.freezed.dart';
part 'tafsir.g.dart';

@freezed
class Tafsir with _$Tafsir {
  const factory Tafsir({
    required int ayat,
    required String teks,
  }) = _Tafsir;

  factory Tafsir.fromJson(Map<String, dynamic> json) => _$TafsirFromJson(json);
}
