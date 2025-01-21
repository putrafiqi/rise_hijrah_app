import 'package:alquran_app/features/alquran/data/datasources/al_quran_remote_data_source.dart';
import 'package:alquran_app/features/alquran/data/repositories/al_quran_repository_impl.dart';
import 'package:alquran_app/features/alquran/domain/entities/surat.dart';
import 'package:alquran_app/features/alquran/domain/repositories/al_quran_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';

@GenerateMocks([http.Client])
void main() {
  late http.Client client;
  late AlQuranRepository repository;
  late AlQuranRemoteDataSource dataSource;

  setUp(() {
    client = http.Client();
    dataSource = AlQuranRemoteDataSourceImpl(client);
    repository = AlQuranRepositoryImpl(dataSource);
  });

  group(
    'Get All Surat',
    () {
      test(
        'Harus Mengembalikan List Object Surat',
        () async {
          final result = await repository.getAllSurat();

          expect(result, isA<List<Surat>>());
        },
      );

      // test(
      //   'Harus mengembalian Eror',
      //   () async {
      //     final result = await repository.getAllSurat();

      //     expect(result, isA<List<Surat>>());
      //   },
      // );
    },
  );

  group(
    'Get Detail Surat',
    () {
      test(
        'Harus Mengembalikan Object Surat dengan nomer 1 dan ayat tidak kosong',
        () async {
          final result = await repository.getDetailSuratById(1);

          expect(result, isA<Surat>());
          expect(result.nomor, 1);
          expect(result.ayat.isNotEmpty, true);
        },
      );
    },
  );

  group(
    'Get Tafsir Surat',
    () {
      test(
        'Harus Mengembalikan Object Surat dengan nomer 1 dan tafsir tidak kosong',
        () async {
          final result = await repository.getTafsirSuratById(1);

          expect(result, isA<Surat>());
          expect(result.nomor, 1);
          expect(result.tafsir.isNotEmpty, true);
        },
      );
    },
  );
}
