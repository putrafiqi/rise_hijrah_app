import 'package:alquran_app/features/alquran/domain/entities/surat.dart';
import 'package:alquran_app/features/alquran/domain/repositories/al_quran_repository.dart';

class GetTafsirSuratById {
  final AlQuranRepository repository;

  GetTafsirSuratById(this.repository);

  Future<Surat> call(int id) async {
    return await repository.getTafsirSuratById(id);
  }
}