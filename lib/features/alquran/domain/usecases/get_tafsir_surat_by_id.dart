import 'package:alquran_app/features/alquran/alquran.dart'
    show Surat, AlQuranRepository;

class GetTafsirSuratById {
  final AlQuranRepository repository;

  GetTafsirSuratById(this.repository);

  Future<Surat> call(int id) async {
    return await repository.getTafsirSuratById(id);
  }
}
