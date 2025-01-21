import 'package:alquran_app/features/alquran/data/datasources/al_quran_remote_data_source.dart';
import 'package:alquran_app/features/alquran/domain/entities/surat.dart';
import 'package:alquran_app/features/alquran/domain/repositories/al_quran_repository.dart';

class AlQuranRepositoryImpl implements AlQuranRepository {
  final AlQuranRemoteDataSource remoteDataSource;

  AlQuranRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Surat>> getAllSurat() async {
    try {
      final result = await remoteDataSource.getAllSurat();

      return result.map((e) => Surat.fromJson(e.toJson())).toList();
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<Surat> getDetailSuratById(int id) async {
    try {
      final result = await remoteDataSource.getDetailSuratById(id);

      return Surat.fromJson(result.toJson());
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<Surat> getTafsirSuratById(int id) async {
    try {
      final result = await remoteDataSource.getTafsirSuratById(id);

      return Surat.fromJson(result.toJson());
    } on Exception {
      rethrow;
    }
  }
}
