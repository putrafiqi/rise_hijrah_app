import 'package:alquran_app/features/alquran/data/datasources/al_quran_remote_data_source.dart';
import 'package:alquran_app/features/alquran/data/models/surat_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

import 'al_quran_remote_data_source_test.mocks.dart';

@GenerateNiceMocks([MockSpec<http.Client>()])
void main() {
  late MockClient client;
  late AlQuranRemoteDataSource dataSource;
  final baseUrl = 'http://equran.id/api/v2';

  setUpAll(() {
    client = MockClient();
    dataSource = AlQuranRemoteDataSourceImpl(client);
  });

  group(
    'Get Surat',
    () {
      test('should return SurahModel when the response code is 200', () async {
        // arrange
        when(client.get(
          Uri.parse('$baseUrl/surat'),
          headers: {
            'Content-Type': 'application/json',
          },
        )).thenAnswer((_) async => http.Response('{"code":200,"status":"OK","data":[]}', 200));
        // act
        final result = await dataSource.getAllSurat();
        // assert
        expect(result, isA<List<SuratModel>>());
      });

      test('should throw Exception when the response code is not 200',
          () async {
        // arrange
        when(client.get(
          Uri.parse('$baseUrl/surat'),
          headers: {
            'Content-Type': 'application/json',
          },
        )).thenAnswer((_) async => http.Response(
            '{"code":500,"status":"Internal Server Error"}', 500));
        // act
        final call = dataSource.getAllSurat();
        // assert
        expect(() => call, throwsException);
      });
    },
  );

  group(
    'Get Detail Surat',
    () {
      test('should return SurahModel when the response code is 200', () async {
        // arrange
        when(client.get(
          Uri.parse('$baseUrl/surat/1'),
          headers: {
            'Content-Type': 'application/json',
          },
        )).thenAnswer((_) async =>
            http.Response('{"code":200,"status":"OK","data":{}}', 200));
        // act
        final result = await dataSource.getDetailSuratById(1);
        // assert
        expect(result, isA<SuratModel>());
      });

      test('should throw Exception when the response code is not 200',
          () async {
        // arrange
        when(client.get(
          Uri.parse('$baseUrl/surat/1'),
          headers: {
            'Content-Type': 'application/json',
          },
        )).thenAnswer((_) async => http.Response(
            '{"code":500,"status":"Internal Server Error"}', 500));
        // act
        final call = dataSource.getDetailSuratById(1);
        // assert
        expect(() => call, throwsException);
      });
    },
  );

  group(
    'Get Tafsiran Surat',
    () {
      test('should return SurahModel when the response code is 200', () async {
        // arrange
        when(client.get(
          Uri.parse('$baseUrl/tafsir/1'),
          headers: {
            'Content-Type': 'application/json',
          },
        )).thenAnswer((_) async => http.Response('{}', 200));
        // act
        final result = await dataSource.getTafsirSuratById(1);
        // assert
        expect(result, isA<SuratModel>());
      });

      test('should throw Exception when the response code is not 200',
          () async {
        // arrange
        when(client.get(
          Uri.parse('$baseUrl/tafsir/1'),
          headers: {
            'Content-Type': 'application/json',
          },
        )).thenAnswer((_) async => http.Response(
            '{"code":500,"status":"Internal Server Error"}', 500));
        // act
        final call = dataSource.getTafsirSuratById(1);
        // assert
        expect(() => call, throwsException);
      });
    },
  );
}
