import 'package:alquran_app/features/alquran/domain/entities/surat.dart';

abstract class AlQuranRepository {
  Future<List<Surat>> getAllSurat();
  Future<Surat> getDetailSuratById(int id);
  Future<Surat> getTafsirSuratById(int id);
}