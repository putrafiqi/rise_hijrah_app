import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'alquran_event.dart';
part 'alquran_state.dart';

class AlquranBloc extends Bloc<AlquranEvent, AlquranState> {
  AlquranBloc() : super(AlquranInitial()) {
    on<AlquranEvent>((event, emit) {});
  }
}
