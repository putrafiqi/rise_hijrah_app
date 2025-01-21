// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuratModelImpl _$$SuratModelImplFromJson(Map<String, dynamic> json) =>
    _$SuratModelImpl(
      nomor: (json['nomor'] as num).toInt(),
      nama: json['nama'] as String,
      namaLatin: json['namaLatin'] as String,
      jumlahAyat: (json['jumlahAyat'] as num).toInt(),
      tempatTurun: json['tempatTurun'] as String,
      arti: json['arti'] as String,
      deskripsi: json['deskripsi'] as String,
      ayat: (json['ayat'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : AyatModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      tafsir: (json['tafsir'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : TafsirModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SuratModelImplToJson(_$SuratModelImpl instance) =>
    <String, dynamic>{
      'nomor': instance.nomor,
      'nama': instance.nama,
      'namaLatin': instance.namaLatin,
      'jumlahAyat': instance.jumlahAyat,
      'tempatTurun': instance.tempatTurun,
      'arti': instance.arti,
      'deskripsi': instance.deskripsi,
      'ayat': instance.ayat,
      'tafsir': instance.tafsir,
    };
