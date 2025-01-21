import 'dart:convert';

import 'package:alquran_app/features/alquran/data/models/surat_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Map<String, dynamic> responseAllSurat;
  late String rawResponseDetailSurat;
  late Map<String, dynamic> responseDetailSurat;
  late String rawResponseTafsirSurat;
  late Map<String, dynamic> responseTafsirSurat;
  setUp(() {
    responseAllSurat = {
      "code": 200,
      "message": "Data retrieved successfully",
      "data": [
        {
          "nomor": 1,
          "nama": "الفاتحة",
          "namaLatin": "Al-Fatihah",
          "jumlahAyat": 7,
          "tempatTurun": "Mekah",
          "arti": "Pembukaan",
          "deskripsi":
              "Surat <i>Al Faatihah</i> (Pembukaan) yang diturunkan di Mekah dan terdiri dari 7 ayat adalah surat yang pertama-tama diturunkan dengan lengkap  diantara surat-surat yang ada dalam Al Quran dan termasuk golongan surat Makkiyyah. Surat ini disebut <i>Al Faatihah</i> (Pembukaan), karena dengan surat inilah dibuka dan dimulainya Al Quran. Dinamakan <i>Ummul Quran</i> (induk Al Quran) atau <i>Ummul Kitaab</i> (induk Al Kitaab) karena dia merupakan induk dari semua isi Al Quran, dan karena itu diwajibkan membacanya pada tiap-tiap sembahyang.<br> Dinamakan pula <i>As Sab'ul matsaany</i> (tujuh yang berulang-ulang) karena ayatnya tujuh dan dibaca berulang-ulang dalam sholat.",
          "audioFull": {
            "01":
                "https://equran.nos.wjv-1.neo.id/audio-full/Abdullah-Al-Juhany/001.mp3",
            "02":
                "https://equran.nos.wjv-1.neo.id/audio-full/Abdul-Muhsin-Al-Qasim/001.mp3",
            "03":
                "https://equran.nos.wjv-1.neo.id/audio-full/Abdurrahman-as-Sudais/001.mp3",
            "04":
                "https://equran.nos.wjv-1.neo.id/audio-full/Ibrahim-Al-Dossari/001.mp3",
            "05":
                "https://equran.nos.wjv-1.neo.id/audio-full/Misyari-Rasyid-Al-Afasi/001.mp3"
          }
        },
        {
          "nomor": 2,
          "nama": "البقرة",
          "namaLatin": "Al-Baqarah",
          "jumlahAyat": 286,
          "tempatTurun": "Madinah",
          "arti": "Sapi",
          "deskripsi":
              "Surat <i>Al Baqarah</i> yang 286 ayat itu turun di Madinah yang sebahagian besar diturunkan pada permulaan tahun Hijrah, kecuali ayat 281 diturunkan di Mina pada Hajji wadaa' (hajji Nabi Muhammad s.a.w. yang terakhir). Seluruh ayat dari surat Al Baqarah termasuk golongan Madaniyyah, merupakan surat yang terpanjang di antara surat-surat Al Quran yang di dalamnya terdapat pula ayat yang terpancang (ayat 282). Surat ini dinamai <i>Al Baqarah</i> karena di dalamnya disebutkan kisah penyembelihan sapi betina yang diperintahkan Allah kepada Bani Israil (ayat 67 sampai dengan 74), dimana dijelaskan watak orang Yahudi pada umumnya. Dinamai <i>Fusthaatul-Quran</i> (puncak Al Quran) karena memuat beberapa hukum yang tidak disebutkan dalam surat yang lain. Dinamai juga surat  <i>alif-laam-miim</i> karena surat ini dimulai dengan Alif-laam-miim.",
          "audioFull": {
            "01":
                "https://equran.nos.wjv-1.neo.id/audio-full/Abdullah-Al-Juhany/002.mp3",
            "02":
                "https://equran.nos.wjv-1.neo.id/audio-full/Abdul-Muhsin-Al-Qasim/002.mp3",
            "03":
                "https://equran.nos.wjv-1.neo.id/audio-full/Abdurrahman-as-Sudais/002.mp3",
            "04":
                "https://equran.nos.wjv-1.neo.id/audio-full/Ibrahim-Al-Dossari/002.mp3",
            "05":
                "https://equran.nos.wjv-1.neo.id/audio-full/Misyari-Rasyid-Al-Afasi/002.mp3"
          }
        },
        {
          "nomor": 3,
          "nama": "اٰل عمران",
          "namaLatin": "Ali 'Imran",
          "jumlahAyat": 200,
          "tempatTurun": "Madinah",
          "arti": "Keluarga Imran",
          "deskripsi":
              "Surat <i>Ali 'Imran</i> yang terdiri dari 200 ayat ini adalah surat Madaniyyah.  Dinamakan <i>Ali 'Imran</i> karena memuat kisah keluarga 'Imran yang di dalam kisah itu disebutkan kelahiran Nabi Isa a.s., persamaan kejadiannya dengan Nabi Adam a. s., kenabian dan beberapa mukjizatnya, serta disebut pula kelahiran Maryam puteri 'Imran, ibu dari Nabi Isa a.s. Surat Al Baqarah dan Ali 'Imran ini dinamakan <i>Az Zahrawaani</i> (dua yang cemerlang), karena kedua surat ini menyingkapkan hal-hal yang disembunyikan oleh para Ahli Kitab, seperti kejadian dan kelahiran Nabi Isa a.s., kedatangan Nabi Muhammad s.a.w. dan sebagainya.",
          "audioFull": {
            "01":
                "https://equran.nos.wjv-1.neo.id/audio-full/Abdullah-Al-Juhany/003.mp3",
            "02":
                "https://equran.nos.wjv-1.neo.id/audio-full/Abdul-Muhsin-Al-Qasim/003.mp3",
            "03":
                "https://equran.nos.wjv-1.neo.id/audio-full/Abdurrahman-as-Sudais/003.mp3",
            "04":
                "https://equran.nos.wjv-1.neo.id/audio-full/Ibrahim-Al-Dossari/003.mp3",
            "05":
                "https://equran.nos.wjv-1.neo.id/audio-full/Misyari-Rasyid-Al-Afasi/003.mp3"
          }
        }
      ]
    };

    rawResponseDetailSurat = '''
{
      "code": 200,
      "message": "Data retrieved successfully",
      "data": {
        "nomor": 110,
        "nama": "النصر",
        "namaLatin": "An-Nasr",
        "jumlahAyat": 3,
        "tempatTurun": "Madinah",
        "arti": "Pertolongan",
        "deskripsi":
            "Surat An Nashr terdiri atas 3 ayat, termasuk golongan surat-surat  Madaniyyah yang diturunkan di Mekah sesudah surat At Taubah.  Dinamai <i>An Nashr</i> (pertolongan) diambil dari perkataan <i>Nashr</i> yang  terdapat pada ayat pertama surat ini.",
        "audioFull": {
          "01":
              "https://equran.nos.wjv-1.neo.id/audio-full/Abdullah-Al-Juhany/110.mp3",
          "02":
              "https://equran.nos.wjv-1.neo.id/audio-full/Abdul-Muhsin-Al-Qasim/110.mp3",
          "03":
              "https://equran.nos.wjv-1.neo.id/audio-full/Abdurrahman-as-Sudais/110.mp3",
          "04":
              "https://equran.nos.wjv-1.neo.id/audio-full/Ibrahim-Al-Dossari/110.mp3",
          "05":
              "https://equran.nos.wjv-1.neo.id/audio-full/Misyari-Rasyid-Al-Afasi/110.mp3"
        },
        "ayat": [
          {
            "nomorAyat": 1,
            "teksArab": "اِذَا جَاۤءَ نَصْرُ اللّٰهِ وَالْفَتْحُۙ",
            "teksLatin": "iżā jā'a naṣrullāhi wal-fatḥ(u).",
            "teksIndonesia":
                "Apabila telah datang pertolongan Allah dan kemenangan,",
            "audio": {
              "01":
                  "https://equran.nos.wjv-1.neo.id/audio-partial/Abdullah-Al-Juhany/110001.mp3",
              "02":
                  "https://equran.nos.wjv-1.neo.id/audio-partial/Abdul-Muhsin-Al-Qasim/110001.mp3",
              "03":
                  "https://equran.nos.wjv-1.neo.id/audio-partial/Abdurrahman-as-Sudais/110001.mp3",
              "04":
                  "https://equran.nos.wjv-1.neo.id/audio-partial/Ibrahim-Al-Dossari/110001.mp3",
              "05":
                  "https://equran.nos.wjv-1.neo.id/audio-partial/Misyari-Rasyid-Al-Afasi/110001.mp3"
            }
          },
          {
            "nomorAyat": 2,
            "teksArab":
                "وَرَاَيْتَ النَّاسَ يَدْخُلُوْنَ فِيْ دِيْنِ اللّٰهِ اَفْوَاجًاۙ",
            "teksLatin": "wa ra'aitan-nāsa yadkhulūna fī dīnillāhi afwājā(n).",
            "teksIndonesia":
                "dan engkau melihat manusia berbondong-bondong masuk agama Allah,",
            "audio": {
              "01":
                  "https://equran.nos.wjv-1.neo.id/audio-partial/Abdullah-Al-Juhany/110002.mp3",
              "02":
                  "https://equran.nos.wjv-1.neo.id/audio-partial/Abdul-Muhsin-Al-Qasim/110002.mp3",
              "03":
                  "https://equran.nos.wjv-1.neo.id/audio-partial/Abdurrahman-as-Sudais/110002.mp3",
              "04":
                  "https://equran.nos.wjv-1.neo.id/audio-partial/Ibrahim-Al-Dossari/110002.mp3",
              "05":
                  "https://equran.nos.wjv-1.neo.id/audio-partial/Misyari-Rasyid-Al-Afasi/110002.mp3"
            }
          },
          {
            "nomorAyat": 3,
            "teksArab":
                "فَسَبِّحْ بِحَمْدِ رَبِّكَ وَاسْتَغْفِرْهُۗ اِنَّهٗ كَانَ تَوَّابًا ࣖ",
            "teksLatin":
                "fasabbiḥ biḥamdi rabbika wastagfirh(u), innahū kāna tawwābā(n).",
            "teksIndonesia":
                "maka bertasbihlah dalam dengan Tuhanmu dan mohonlah ampunan kepada-Nya. Sungguh, Dia Maha Penerima tobat.",
            "audio": {
              "01":
                  "https://equran.nos.wjv-1.neo.id/audio-partial/Abdullah-Al-Juhany/110003.mp3",
              "02":
                  "https://equran.nos.wjv-1.neo.id/audio-partial/Abdul-Muhsin-Al-Qasim/110003.mp3",
              "03":
                  "https://equran.nos.wjv-1.neo.id/audio-partial/Abdurrahman-as-Sudais/110003.mp3",
              "04":
                  "https://equran.nos.wjv-1.neo.id/audio-partial/Ibrahim-Al-Dossari/110003.mp3",
              "05":
                  "https://equran.nos.wjv-1.neo.id/audio-partial/Misyari-Rasyid-Al-Afasi/110003.mp3"
            }
          }
        ],
        "suratSelanjutnya": {
          "nomor": 111,
          "nama": "اللهب",
          "namaLatin": "Al-Lahab",
          "jumlahAyat": 5
        },
        "suratSebelumnya": {
          "nomor": 109,
          "nama": "الكٰفرون",
          "namaLatin": "Al-Kafirun",
          "jumlahAyat": 6
        }
      }
    }
''';
    responseDetailSurat = jsonDecode(rawResponseDetailSurat);

    rawResponseTafsirSurat = '''
{
      "code": 200,
      "message": "Data retrieved successfully",
      "data": {
        "nomor": 110,
        "nama": "النصر",
        "namaLatin": "An-Nasr",
        "jumlahAyat": 3,
        "tempatTurun": "Madinah",
        "arti": "Pertolongan",
        "deskripsi":
            "Surat An Nashr terdiri atas 3 ayat, termasuk golongan surat-surat  Madaniyyah yang diturunkan di Mekah sesudah surat At Taubah.  Dinamai <i>An Nashr</i> (pertolongan) diambil dari perkataan <i>Nashr</i> yang  terdapat pada ayat pertama surat ini.",
        "audioFull": {
          "01":
              "https://equran.nos.wjv-1.neo.id/audio-full/Abdullah-Al-Juhany/110.mp3",
          "02":
              "https://equran.nos.wjv-1.neo.id/audio-full/Abdul-Muhsin-Al-Qasim/110.mp3",
          "03":
              "https://equran.nos.wjv-1.neo.id/audio-full/Abdurrahman-as-Sudais/110.mp3",
          "04":
              "https://equran.nos.wjv-1.neo.id/audio-full/Ibrahim-Al-Dossari/110.mp3",
          "05":
              "https://equran.nos.wjv-1.neo.id/audio-full/Misyari-Rasyid-Al-Afasi/110.mp3"
        },
        "tafsir": [
          {
            "ayat": 1,
            "teks":
                "Dalam ayat-ayat ini, Allah memerintahkan apa yang harus dilakukan Nabi Muhammad pada saat pembebasan Mekah, yaitu apabila ia telah melihat pertolongan Allah terhadap agama-Nya telah tiba, dengan kekalahan orang-orang musyrik dan kemenangan di pihak Nabi, dan melihat pula orang-orang masuk agama Allah beramai-ramai dan berduyun-duyun, bukan perseorangan sebagaimana halnya pada permulaan dakwah. Orang-orang Arab berkata, 'Manakala Muhammad menang atas penduduk Mekah yang mana Allah telah selamatkan mereka dari pasukan bergajah, maka kalian tidak berdaya melawannya.' Akhirnya mereka masuk Islam berduyun-duyun, berkelompok-kelompok dan satu kelompok 40 orang."
          },
          {
            "ayat": 2,
            "teks":
                "Dalam ayat-ayat ini, Allah memerintahkan apa yang harus dilakukan Nabi Muhammad pada saat pembebasan Mekah, yaitu apabila ia telah melihat pertolongan Allah terhadap agama-Nya telah tiba, dengan kekalahan orang-orang musyrik dan kemenangan di pihak Nabi, dan melihat pula orang-orang masuk agama Allah beramai-ramai dan berduyun-duyun, bukan perseorangan sebagaimana halnya pada permulaan dakwah. Orang-orang Arab berkata, 'Manakala Muhammad menang atas penduduk Mekah yang mana Allah telah selamatkan mereka dari pasukan bergajah, maka kalian tidak berdaya melawannya.' Akhirnya mereka masuk Islam berduyun-duyun, berkelompok-kelompok dan satu kelompok 40 orang."
          },
          {
            "ayat": 3,
            "teks":
                "Bila yang demikian itu telah terjadi, Nabi diperintahkan untuk mengagungkan dan mensucikan Tuhannya dari hal-hal yang tidak layak bagi-Nya, seperti menganggap terlambat datangnya pertolongan dan mengira bahwa Tuhan tidak menepati janji-Nya menolong Nabi atas orang-orang kafir. Menyucikan Allah hendaknya dengan memuji-Nya atas nikmat-nikmat yang dianugerahkan-Nya dan mensyukuri segala kebaikan-kebaikan yang telah dilimpahkan-Nya dan menyanjung-Nya dengan sepantasnya. Bila Allah Yang Mahakuasa dan Mahabijaksana memberi kesempatan kepada orang-orang kafir, bukanlah berarti Dia telah menyia-nyiakan pahala orang-orang yang beramal baik. Kemudian Nabi Muhammad dianjurkan untuk meminta ampun kepada Allah untuk dirinya dan sahabat-sahabatnya yang telah memperlihatkan kesedihan dan keputusasaan karena merasa pertolongan Allah terlambat datangnya. Bertobat dari keluh-kesah adalah dengan mempercayai penuh akan janji-janji Allah dan membersihkan jiwa dari pemikiran yang bukan-bukan bila menghadapi kesulitan. Hal ini walaupun berat untuk jiwa manusia biasa, tetapi ringan untuk Nabi Muhammad sebagai insan kamil (manusia sempurna). Oleh sebab itu, Allah menyuruh Nabi saw memohon ampunan-Nya. Keadaan ini terjadi pula pada para sahabat yang memiliki jiwa yang sempurna dan menerima tobat mereka, karena Allah selalu menerima tobat hamba-hamba-Nya. Allah mendidik hamba-hamba-Nya melalui bermacam-macam cobaan dan bila merasa tidak sanggup menghadapinya harus memohon bantuan-Nya serta yakin akan datangnya bantuan itu. Bila ia selalu melakukan yang demikian niscaya menjadi kuat dan sempurnalah jiwanya. Maksudnya, bila pertolongan telah tiba dan telah mencapai kemenangan serta manusia berbondong-bondong masuk Islam, hilanglah ketakutan dan hendaklah Nabi saw bertasbih menyucikan Tuhannya dan mensyukuri-Nya serta membersihkan jiwa dari pemikiran-pemikiran yang terjadi pada masa kesulitan. Dengan demikian, keluh-kesah dan rasa kecewa tidak lagi akan mempengaruhi jiwa orang-orang yang ikhlas selagi mereka memiliki keikhlasan dan berada dalam persesuaian kata dan cinta sama cinta. Dengan turunnya Surah an-Nasr ini, Nabi memahami bahwa tugas risalahnya telah selesai dan selanjutnya ia hanya menunggu panggilan pulang ke rahmatullah.  Ibnu 'AbbAs berkata: 'Ketika turun ayat Idha jaa nasrullahi wal fath, Rasulullah saw memanggil Fatimah, lalu berkata: 'Kematian diriku sudah dekat.' Fatimah pun menangis. Rasulullah saw berkata, 'Jangan menangis, karea kamu adalah anggota pertama dari keluargaku yang akan menyusulku.' Fatimah pun tertawa bahagia (mendengarnya). Para istri Nabi saw yang melihat hal itu berkata, 'Wahai Fatimah, kami melihatmu menangis lalu tertawa.' Fatimah berkata, 'Rasulullah saw memberitahuku bahwa kematian dirinya telah dekat, maka aku menangis. Namun, beliau mengatakan, 'Jangan menangis, karena kamu adalah anggota pertama dari keluargaku yang akan menyusulku.' Maka aku pun tertawa bahagia. (Riwayat al- Darimi) Ibnu 'Umar berkata, 'Surah ini turun di Mina ketika Nabi mengerjakan Haji Wada', sesudah itu turun firman Allah: Pada hari ini telah Aku sempurnakan agamamu untukmu, dan telah Aku cukupkan nikmat-Ku bagimu, dan telah Aku ridai Islam sebagai agamamu. (al-Ma'idah/5: 3) Nabi hidup hanya delapan puluh hari setelah turun ayat ini. Kemudian setelah itu, turun ayat Kalalah, dan Nabi hidup sesudahnya lima puluh hari. Setelah itu turun ayat: Sungguh, telah datang kepadamu seorang rasul dari kaummu sendiri. (at-Taubah/9:128) Maka Nabi saw hidup sesudahnya tiga puluh lima hari. Kemudian turun firman Allah: Dan takutlah pada hari (ketika) kamu semua dikembalikan kepada Allah. (al Baqarah/2: 281) Maka Nabi saw hidup sesudahnya hanya dua puluh satu hari saja."
          }
        ]
      }
    }
''';
    responseTafsirSurat = jsonDecode(rawResponseTafsirSurat);
  });

  group(
    'UserModel Deserialization',
    () {
      group(
        'SuratModel fromJson after data retrieved from API GetAllSurat',
        () {
          test(
            ' should be a subclass of SuratModel entity',
            () {
              final surat =
                  SuratModel.fromJson((responseAllSurat['data'] as List).first);

              expect(surat, isA<SuratModel>());
            },
          );

          test(
            ' should be a list of SuratModel entity',
            () {
              final surat = (responseAllSurat['data'] as List)
                  .map((e) => SuratModel.fromJson(e))
                  .toList();

              expect(surat, isA<List<SuratModel>>());
            },
          );

          test(' should return a valid SuratModel with ayat and tafsir empty',
              () {
            final surat =
                SuratModel.fromJson((responseAllSurat['data'] as List).first);

            expect(surat.tafsir, isEmpty);
            expect(surat.ayat, isEmpty);
          });
        },
      );

      group(
        'SuratModel fromJson after data retrieved from API Get Detail Surat',
        () {
          test(
            ' should be a subclass of SuratModel entity',
            () {
              final surat = SuratModel.fromJson((responseDetailSurat['data']));

              expect(surat, isA<SuratModel>());
            },
          );

          test(' should return a valid SuratModel with ayat not Empty', () {
            final surat = SuratModel.fromJson((responseDetailSurat['data']));

            expect(surat.ayat, isNotEmpty);
          });
        },
      );

      group(
        'SuratModel fromJson after data retrieved from API Get Tafsir Surat',
        () {
          test(
            ' should be a subclass of SuratModel entity',
            () {
              final surat = SuratModel.fromJson((responseTafsirSurat['data']));

              expect(surat, isA<SuratModel>());
            },
          );

          test(' should return a valid SuratModel with tafsir Not Empty', () {
            final surat = SuratModel.fromJson((responseTafsirSurat['data']));

            expect(surat.tafsir, isNotEmpty);
          });
        },
      );
    },
  );

  group('UserModel Serialization', () {
    test(' should return a JSON map when ayat is not empty', () {
        final surat = SuratModel.fromJson((responseDetailSurat['data']));

        expect(surat.toJson(), isA<Map<String,dynamic>>());
        expect(surat.ayat, isNotEmpty);
      });
    
    test(' should return a JSON map when tafsir is not empty', () {
        final surat = SuratModel.fromJson((responseTafsirSurat['data']));

        expect(surat.toJson(), isA<Map<String,dynamic>>());
        expect(surat.tafsir, isNotEmpty);
      });
  });
}
