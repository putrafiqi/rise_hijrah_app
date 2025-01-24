import '../../alquran.dart' show Surat;

abstract class AlQuranRepository {
  Future<List<Surat>> getAllSurat();
  Future<Surat> getDetailSuratById(int id);
  Future<Surat> getTafsirSuratById(int id);
}