import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../alquran.dart' show GetAllSurat, GetSuratById, GetTafsirSuratById, Surat;

part 'alquran_event.dart';
part 'alquran_state.dart';

class AlquranBloc extends Bloc<AlquranEvent, AlquranState> {
  final GetAllSurat _getAllSurat;
  final GetSuratById _getDetailSurat;
  final GetTafsirSuratById _getTafsirSurat;

  AlquranBloc(
      {required GetAllSurat useCaseGetAllSurat,
      required GetSuratById useCaseGetSuratById,
      required GetTafsirSuratById useCaseGetTafsirSuratById})
      : _getAllSurat = useCaseGetAllSurat,
        _getDetailSurat = useCaseGetSuratById,
        _getTafsirSurat = useCaseGetTafsirSuratById,
        super(AlquranInitial([])) {
    on<GetAllSuratRequest>(
      (event, emit) async {

        /// Check if the alqurans already fetched
        if (state.alqurans.isNotEmpty) {
          emit(AlquranLoaded(state.alqurans));
          return;
        }
        emit(AlquranLoading(state.alqurans));
        try {

          /// Fetch all surat
          final result = await _getAllSurat.call();
          emit(AlquranLoaded(result));
        } on Exception {
          emit(AlquranError('Failed to fetch data', state.alqurans));
        }
      },
    );
    on<GetDetailSuratRequest>(
      (event, emit) async {

        /// Check if the surat already has ayat
        if (state.alqurans
            .where((element) => element.nomor == event.nomor)
            .first
            .ayat
            .isNotEmpty) {
          emit(AlquranLoaded(state.alqurans));
          return;
        }
        emit(AlquranLoading(state.alqurans));
        try {

          /// Fetch detail surat
          final result = await _getDetailSurat.call(event.nomor);

          emit(AlquranLoaded(state.alqurans
              .map((e) =>
                  e.nomor == event.nomor ? e.copyWith(ayat: result.ayat) : e)
              .toList()));
        } on Exception {
          emit(AlquranError('Failed to fetch data', state.alqurans));
        }
      },
    );

    on<GetTafsirSuratRequest>(
      (event, emit) async {

        /// Check if the surat already has tafsir
        if (state.alqurans
            .where((element) => element.nomor == event.nomor)
            .first
            .tafsir
            .isNotEmpty) {
          emit(AlquranLoaded(state.alqurans));
          return;
        }
        emit(AlquranLoading(state.alqurans));
        try {

          /// Fetch tafsir surat
          final result = await _getTafsirSurat.call(event.nomor);
          emit(AlquranLoaded(state.alqurans
              .map((e) => e.nomor == event.nomor
                  ? e.copyWith(tafsir: result.tafsir)
                  : e)
              .toList()));
        } on Exception {
          emit(AlquranError('Failed to fetch data', state.alqurans));
        }
      },
    );
  }
}
