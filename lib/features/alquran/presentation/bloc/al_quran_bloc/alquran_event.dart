part of 'alquran_bloc.dart';

abstract class AlquranEvent extends Equatable {
  const AlquranEvent();

  @override
  List<Object> get props => [];
}

class GetAllSuratRequest extends AlquranEvent {}

class GetDetailSuratRequest extends AlquranEvent {
  final int nomor;

  const GetDetailSuratRequest(this.nomor);

  @override
  List<Object> get props => [nomor];
}

class GetTafsirSuratRequest extends AlquranEvent {
  final int nomor;

  const GetTafsirSuratRequest(this.nomor);

  @override
  List<Object> get props => [nomor];
}
