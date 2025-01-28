import 'package:alquran_app/core/extension/string.dart';
import 'package:alquran_app/core/theme/color.dart';
import 'package:flutter/material.dart';

import '../../alquran.dart' show Surat;

class SuratTile extends StatelessWidget {
  const SuratTile({
    super.key,
    required this.surat,
    this.onTap,
    this.onLongPress,
  });

  final Surat surat;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      key: ValueKey(surat.nomor),
      title: Text(
        surat.namaLatin,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColor.primary,
        ),
      ),
      subtitle: Text(surat.arti),
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage('assets/images/ayat.png'),
        child: Text(
          surat.nomor.toString(),
          style: const TextStyle(
            color: AppColor.primary,
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
        ),
      ),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            surat.nama,
            style: const TextStyle(
              fontSize: 24,
              fontFamily: 'IsepMisbah',
            ),
          ),
          Text('1 - ${surat.jumlahAyat} Ayat'),
        ],
      ),
      onTap: onTap,
      onLongPress: onLongPress ??
          () {
            _showBottomSheetSurat(context);
          },
    );
  }

  /// Show bottom sheet surat description
  Future<void> _showBottomSheetSurat(BuildContext context) {
    return showModalBottomSheet(
        showDragHandle: true,
        enableDrag: true,
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            physics: const BouncingScrollPhysics(
                decelerationRate: ScrollDecelerationRate.fast),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Surat ${surat.namaLatin}',
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold)),
                Text('Arti ${surat.arti}',
                    style: const TextStyle(fontSize: 14, color: Colors.grey)),
                const SizedBox(height: 8),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Chip(
                        label: Text('Surat ke - ${surat.nomor}'),
                      ),
                      const SizedBox(width: 8),
                      Chip(
                        label: Text('Jumlah Ayat ${surat.jumlahAyat}'),
                      ),
                      const SizedBox(width: 8),
                      Chip(
                        label: Text(surat.tempatTurun),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Deskripsi Surat',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      surat.deskripsi.parseHtmlString(),
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.5,
                        color: Colors.grey[600],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
