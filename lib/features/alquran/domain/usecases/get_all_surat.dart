import '../../alquran.dart' show Surat, AlQuranRepository;

class GetAllSurat {
  final AlQuranRepository repository;

  GetAllSurat(this.repository);

  Future<List<Surat>> call() async {
    return await repository.getAllSurat();
  }
}