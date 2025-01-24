import 'dart:convert';

import '../models/surat_model.dart';
import 'package:http/http.dart' as http;

abstract class AlQuranRemoteDataSource {
  Future<List<SuratModel>> getAllSurat();
  Future<SuratModel> getDetailSuratById(int id);
  Future<SuratModel> getTafsirSuratById(int id);
}

class AlQuranRemoteDataSourceImpl implements AlQuranRemoteDataSource {
  final http.Client client;

  AlQuranRemoteDataSourceImpl(this.client);

  static const String _baseUrl = 'https://equran.id/api/v2';

  @override
  Future<List<SuratModel>> getAllSurat() async {
    final result = await client.get(
      Uri.parse('$_baseUrl/surat'),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (result.statusCode != 200) {
      throw Exception('Gagal mengambil data surat');
    }
    final resultBodyMap = jsonDecode(result.body) as Map;

    return (resultBodyMap['data'] as List)
        .map((e) => SuratModel.fromJson(e))
        .toList();
  }

  @override
  Future<SuratModel> getDetailSuratById(int id) async {
    final result = await client.get(
      Uri.parse('$_baseUrl/surat/$id'),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (result.statusCode != 200) {
      throw Exception('Gagal mengambil data detail surat');
    }

    final resultBodyMap = jsonDecode(result.body) as Map;

    return SuratModel.fromJson(resultBodyMap['data']);
  }

  @override
  Future<SuratModel> getTafsirSuratById(int id) async {
    final result = await client.get(
      Uri.parse('$_baseUrl/tafsir/$id'),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (result.statusCode != 200) {
      throw Exception('Gagal mengambil data tafsir surat');
    }

    final resultBodyMap = jsonDecode(result.body) as Map;

    return SuratModel.fromJson(resultBodyMap['data']);
  }
}
