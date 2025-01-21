import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'tafsir_model.freezed.dart';
part 'tafsir_model.g.dart';

@freezed
class TafsirModel with _$TafsirModel {
  const factory TafsirModel({
    required int ayat,
    required String teks,
  }) = _TafsirModel;

  factory TafsirModel.fromJson(Map<String, dynamic> json) =>
      _$TafsirModelFromJson(json);
}
