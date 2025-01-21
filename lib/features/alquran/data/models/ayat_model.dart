import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'ayat_model.freezed.dart';
part 'ayat_model.g.dart';

@freezed
class AyatModel with _$AyatModel {
  const factory AyatModel({
    required int nomorAyat,
    required String teksArab,
    required String teksLatin,
    required String teksIndonesia,
  }) = _AyatModel;

  factory AyatModel.fromJson(Map<String, dynamic> json) =>
      _$AyatModelFromJson(json);
}
