import 'package:alquran_app/features/alquran/alquran.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SkelentonListAyat extends StatelessWidget {
  SkelentonListAyat({super.key});

  final List<Ayat> ayatDummyData = List.filled(
      5,
      Ayat(
          nomorAyat: 0,
          teksArab: 'Ini Teks Arab',
          teksLatin: 'Ini Teks Latin',
          teksIndonesia: 'Ini Tesk Indonesia'));
  final List<Tafsir> tafsirDummyData =
      List.filled(5, Tafsir(teks: '', ayat: 1));
  final String namaSurat = '';

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enableSwitchAnimation: true,
      effect: PulseEffect(),
      enabled: true,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          final ayat = ayatDummyData[index];
          final tafsir = tafsirDummyData[index];
          return AyatTile(
              ayat: ayat,
              tafsir: tafsir,
              namaSurat: namaSurat,
              showBorder: false);
        },
      ),
    );
  }
}
