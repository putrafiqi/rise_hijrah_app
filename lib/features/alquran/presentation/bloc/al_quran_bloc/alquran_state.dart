part of 'alquran_bloc.dart';

abstract class AlquranState extends Equatable {
  final List<Surat> alqurans;

  const AlquranState(this.alqurans);

  @override
  List<Object> get props => [alqurans];
}

class AlquranInitial extends AlquranState {
  const AlquranInitial(super.alqurans);
}

class AlquranLoading extends AlquranState {
  const AlquranLoading(super.alqurans);
}

class AlquranLoaded extends AlquranState {
  const AlquranLoaded(super.alqurans);
}

class AlquranError extends AlquranState {
  final String message;

  const AlquranError(this.message, super.alqurans);

  @override
  List<Object> get props => [message];
}
