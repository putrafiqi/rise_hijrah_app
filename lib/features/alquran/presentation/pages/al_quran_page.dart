import 'package:alquran_app/core/skeleton/skeleton_list_surat.dart';
import 'package:alquran_app/core/theme/color.dart';
import 'package:alquran_app/features/alquran/alquran.dart'
    show
        AlquranBloc,
        AlquranError,
        AlquranLoaded,
        AlquranLoading,
        AlquranState,
        BacaAlQuranPage,
        GetAllSuratRequest,
        GetDetailSuratRequest,
        GetTafsirSuratRequest,
        SuratTile;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlQuranPage extends StatelessWidget {
  const AlQuranPage._();

  static Route route({required AlquranBloc bloc}) {
    return MaterialPageRoute<void>(
        builder: (_) => BlocProvider.value(
              value: bloc..add(GetAllSuratRequest()),
              child: const AlQuranPage._(),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return _AlQuranView();
  }
}

class _AlQuranView extends StatelessWidget {
  const _AlQuranView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColor.primary,
        title: const Text('Al-Quran'),
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () {
            context.read<AlquranBloc>().add(GetAllSuratRequest());
            return Future<void>.value();
          },
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColor.primary,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Terakhir Baca',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Al-Fatihah',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: LinearProgressIndicator(
                          value: 0.5,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                          backgroundColor: Colors.white70,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'Ayat 1',
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(width: 16),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 14,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                BlocBuilder<AlquranBloc, AlquranState>(
                  builder: (context, state) {
                    if (state is AlquranLoading) {
                      return SkeletonListSurat();
                    } else if (state is AlquranLoaded) {
                      return ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.alqurans.length,
                        itemBuilder: (context, index) {
                          final surat = state.alqurans[index];
                          return SuratTile(
                            surat: surat,
                            onTap: () {
                              if (surat.ayat.isEmpty && surat.tafsir.isEmpty) {
                                context
                                    .read<AlquranBloc>()
                                    .add(GetDetailSuratRequest(surat.nomor));
                                context
                                    .read<AlquranBloc>()
                                    .add(GetTafsirSuratRequest(surat.nomor));
                              }
                              Navigator.of(context).push(BacaAlQuranPage.route(
                                  surat.nomor, surat.namaLatin,
                                  bloc: context.read<AlquranBloc>()));
                            },
                          );
                        },
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
