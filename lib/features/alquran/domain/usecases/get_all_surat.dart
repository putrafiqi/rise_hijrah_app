import 'package:alquran_app/features/alquran/domain/entities/surat.dart';
import 'package:alquran_app/features/alquran/domain/repositories/al_quran_repository.dart';

class GetAllSurat {
  final AlQuranRepository repository;

  GetAllSurat(this.repository);

  Future<List<Surat>> call() async {
    return await repository.getAllSurat();
  }
}