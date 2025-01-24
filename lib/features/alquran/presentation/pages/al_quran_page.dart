import 'package:alquran_app/features/alquran/alquran.dart'
    show
        AlQuranRepository,
        AlquranBloc,
        AlquranError,
        AlquranLoaded,
        AlquranLoading,
        AlquranState,
        BacaAlQuranPage,
        GetAllSurat,
        GetAllSuratRequest,
        GetSuratById,
        GetTafsirSuratById,
        SuratTile;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlQuranPage extends StatelessWidget {
  const AlQuranPage({super.key});

  static Route route({required AlQuranRepository repository}) {
    return MaterialPageRoute<void>(
        builder: (_) => RepositoryProvider.value(
              value: repository,
              child: const AlQuranPage(),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AlquranBloc(
        useCaseGetAllSurat: GetAllSurat(context.read<AlQuranRepository>()),
        useCaseGetSuratById: GetSuratById(context.read<AlQuranRepository>()),
        useCaseGetTafsirSuratById:
            GetTafsirSuratById(context.read<AlQuranRepository>()),
      )..add(GetAllSuratRequest()),
      child: _AlQuranView(),
    );
  }
}

class _AlQuranView extends StatelessWidget {
  const _AlQuranView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Al-Quran', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue[700],
        centerTitle: true,
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () {
            context.read<AlquranBloc>().add(GetAllSuratRequest());
            return Future<void>.value();
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<AlquranBloc, AlquranState>(
                  builder: (context, state) {
                    if (state is AlquranLoading) {
                      return CircularProgressIndicator();
                    } else if (state is AlquranLoaded) {
                      return Expanded(
                        child: ListView.builder(
                          itemCount: state.alqurans.length,
                          itemBuilder: (context, index) {
                            final surat = state.alqurans[index];
                            return SuratTile(
                              surat: surat,
                              onTap: () {
                                Navigator.of(context).push(
                                    BacaAlQuranPage.route(
                                        surat.nomor, surat.namaLatin,
                                        bloc: context.read<AlquranBloc>()));
                              },
                            );
                          },
                        ),
                      );
                    } else if (state is AlquranError) {
                      return Text(state.message);
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
