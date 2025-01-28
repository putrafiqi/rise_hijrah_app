import 'package:alquran_app/features/alquran/alquran.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SkeletonListSurat extends StatelessWidget {
  SkeletonListSurat({super.key});

  final List<Surat> suratDummyData = List.filled(
      8,
      Surat(
          nomor: 1,
          nama: 'Al-Fatihah',
          namaLatin: 'Al-Fatihah',
          jumlahAyat: 7,
          tempatTurun: 'Mekkah',
          arti: 'Pembukaan',
          deskripsi: 'Surat pembuka Al-Qur\'an'));

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enableSwitchAnimation: true,
      effect: PulseEffect(),
      enabled: true,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        itemBuilder: (context, index) {
          final surat = suratDummyData[index];
          return SuratTile(surat: surat);
        },
      ),
    );
  }
}
