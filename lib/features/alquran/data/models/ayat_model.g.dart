// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AyatModelImpl _$$AyatModelImplFromJson(Map<String, dynamic> json) =>
    _$AyatModelImpl(
      nomorAyat: (json['nomorAyat'] as num).toInt(),
      teksArab: json['teksArab'] as String,
      teksLatin: json['teksLatin'] as String,
      teksIndonesia: json['teksIndonesia'] as String,
    );

Map<String, dynamic> _$$AyatModelImplToJson(_$AyatModelImpl instance) =>
    <String, dynamic>{
      'nomorAyat': instance.nomorAyat,
      'teksArab': instance.teksArab,
      'teksLatin': instance.teksLatin,
      'teksIndonesia': instance.teksIndonesia,
    };
