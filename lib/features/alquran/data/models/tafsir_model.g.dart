// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tafsir_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TafsirModelImpl _$$TafsirModelImplFromJson(Map<String, dynamic> json) =>
    _$TafsirModelImpl(
      ayat: (json['ayat'] as num).toInt(),
      teks: json['teks'] as String,
    );

Map<String, dynamic> _$$TafsirModelImplToJson(_$TafsirModelImpl instance) =>
    <String, dynamic>{
      'ayat': instance.ayat,
      'teks': instance.teks,
    };
