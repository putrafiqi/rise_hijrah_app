import 'package:alquran_app/features/alquran/data/datasources/al_quran_remote_data_source.dart';
import 'package:alquran_app/features/alquran/data/models/surat_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

import 'al_quran_remote_data_source_test.mocks.dart';

@GenerateNiceMocks([MockSpec<http.Client>()])
void main() {
  late MockClient mockClient;
  late AlQuranRemoteDataSource dataSourceWithMock;
  late http.Client clientHTTP;
  late AlQuranRemoteDataSource dataSourceActual;

  final baseUrl = 'http://equran.id/api/v2';

  setUp(() {
    mockClient = MockClient();
    dataSourceWithMock = AlQuranRemoteDataSourceImpl(mockClient);
    clientHTTP = http.Client();
    dataSourceActual = AlQuranRemoteDataSourceImpl(clientHTTP);
  });

  group(
    'Get Surat',
    () {
      test('should return SurahModel when the response code is 200', () async {
        // arrange

        // act
        final result = await dataSourceActual.getAllSurat();
        // assert
        expect(result, isA<List<SuratModel>>());
      });

      test('should throw Exception when the response code is not 200',
          () async {
        // arrange
        when(mockClient.get(
          Uri.parse('$baseUrl/surat'),
          headers: {
            'Content-Type': 'application/json',
          },
        )).thenAnswer((_) async => http.Response(
            '{"code":500,"status":"Internal Server Error"}', 500));
        // act
        final call = dataSourceWithMock.getAllSurat();
        // assert
        expect(() => call, throwsException);
      });
    },
  );

  group(
    'Get Detail Surat',
    () {
      test(
          'Harus Mengembalikan Object Surat Model dengan field ayat tidak kosong dan dengan nomer 1',
          () async {
        // arrange

        // act
        final result = await dataSourceActual.getDetailSuratById(1);
        // assert
        expect(result, isA<SuratModel>());
        expect(result.nomor, 1);
        expect(result.ayat.isNotEmpty, true);
      });

      test('should throw Exception when the response code is not 200',
          () async {
        // arrange
        when(mockClient.get(
          Uri.parse('$baseUrl/surat/1'),
          headers: {
            'Content-Type': 'application/json',
          },
        )).thenAnswer((_) async => http.Response(
            '{"code":500,"status":"Internal Server Error"}', 500));
        // act
        final call = dataSourceWithMock.getDetailSuratById(1);
        // assert
        expect(() => call, throwsException);
      });
    },
  );

  group(
    'Get Tafsiran Surat',
    () {
      test(
          'Harus mengembalikan Object SuratModel dengan field tafsir tidak kosong dan dengan nomer 1',
          () async {
        // arrange

        // act
        final result = await dataSourceActual.getTafsirSuratById(1);
        // assert
        expect(result, isA<SuratModel>());
        expect(result.tafsir.isNotEmpty, true);
        expect(result.nomor, 1);
      });

      test('should throw Exception when the response code is not 200',
          () async {
        // arrange
        when(mockClient.get(
          Uri.parse('$baseUrl/tafsir/1'),
          headers: {
            'Content-Type': 'application/json',
          },
        )).thenAnswer((_) async => http.Response(
            '{"code":500,"status":"Internal Server Error"}', 500));
        // act
        final call = dataSourceWithMock.getTafsirSuratById(1);
        // assert
        expect(() => call, throwsException);
      });
    },
  );
}
