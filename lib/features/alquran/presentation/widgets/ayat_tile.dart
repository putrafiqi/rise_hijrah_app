import 'package:alquran_app/core/extension/string.dart';
import 'package:alquran_app/core/theme/color.dart';

import '../../alquran.dart' show Ayat, Tafsir;
import 'package:flutter/material.dart';

class AyatTile extends StatelessWidget {
  const AyatTile(
      {super.key,
      required this.ayat,
      required this.tafsir,
      this.onTap,
      this.onLongPress,
      required this.namaSurat,
      this.showBorder});

  final Ayat ayat;
  final Tafsir tafsir;
  final bool? showBorder;
  final String namaSurat;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      titleAlignment: ListTileTitleAlignment.top,
      shape: showBorder ?? true
          ? LinearBorder.bottom(side: BorderSide(color: Colors.grey[300]!))
          : null,
      key: ObjectKey(ayat),
      title: _title(),
      subtitle: _subTitle(),
      leading: _leading(),
      onTap: onTap,
      onLongPress: onLongPress ??
          () {
            _showBottomSheetTafsir(context);
          },
    );
  }

  CircleAvatar _leading() {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      backgroundImage: const AssetImage('assets/images/ayat.png'),
      child: Text(
        tafsir.ayat.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColor.primary,
          fontSize: 10,
        ),
      ),
    );
  }

  Column _subTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        Text(
          ayat.teksLatin,
          textAlign: TextAlign.justify,
          style: TextStyle(fontFamily: 'Roboto'),
        ),
        const SizedBox(height: 8),
        Text(
          ayat.teksIndonesia.parseHtmlString(),
          style: const TextStyle(color: Colors.grey),
          textAlign: TextAlign.justify,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          spacing: 2,
          children: [
            IconButton(
              icon: const Icon(Icons.bookmark_border),
              color: AppColor.primary,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.volume_up),
              color: AppColor.primary,
              onPressed: () {},
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.share),
                color: AppColor.primary),
          ],
        )
      ],
    );
  }

  Container _title() {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Text(
        ayat.teksArab,
        textAlign: TextAlign.right,
        style: const TextStyle(
            fontSize: 24, fontFamily: 'IsepMisbah', color: AppColor.primary),
      ),
    );
  }

  Future<void> _showBottomSheetTafsir(BuildContext context) {
    return showModalBottomSheet(
        showDragHandle: true,
        enableDrag: true,
        isScrollControlled: true,
        useSafeArea: true,
        isDismissible: true,
        anchorPoint: Offset.zero,
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Surat $namaSurat - Ayat ${tafsir.ayat}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColor.primary,
                  ),
                ),
                const SizedBox(height: 8),
                const SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tafsiran Ayat - ${tafsir.ayat}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColor.primary,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      tafsir.teks.parseHtmlString(),
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
