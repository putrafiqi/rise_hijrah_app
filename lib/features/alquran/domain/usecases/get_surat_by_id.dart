import '../../alquran.dart' show Surat, AlQuranRepository;


class GetSuratById {
  final AlQuranRepository repository;

  GetSuratById(this.repository);

  Future<Surat> call(int id) async {
    return await repository.getDetailSuratById(id);
  }
}