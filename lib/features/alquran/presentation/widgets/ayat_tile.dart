import '../../alquran.dart' show Ayat, Tafsir;
import 'package:flutter/material.dart';

class AyatTile extends StatelessWidget {
  const AyatTile({
    super.key,
    required this.ayat,
    required this.tafsir,
    this.onTap,
    this.onLongPress,
    required this.namaSurat,
  });

  final Ayat ayat;
  final Tafsir tafsir;
  final String namaSurat;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      titleAlignment: ListTileTitleAlignment.top,
      shape: LinearBorder.bottom(side: BorderSide(color: Colors.grey[300]!)),
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
      child: Text(
        tafsir.ayat.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
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
        Text(ayat.teksLatin),
        Text(ayat.teksIndonesia),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          spacing: 2,
          children: [
            IconButton(
              icon: const Icon(Icons.bookmark_border),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.volume_up),
              onPressed: () {},
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
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
          fontSize: 24,
          fontFamily: 'IsepMisbah',
        ),
      ),
    );
  }

  Future<void> _showBottomSheetTafsir(BuildContext context) {
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
                Text('Surat $namaSurat - Ayat ${tafsir.ayat}',
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold)),
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
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      tafsir.teks,
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
