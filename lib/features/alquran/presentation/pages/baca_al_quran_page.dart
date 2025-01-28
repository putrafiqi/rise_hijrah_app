import 'package:alquran_app/core/skeleton/skeleton_list_ayat.dart';
import 'package:alquran_app/core/theme/color.dart';
import 'package:alquran_app/features/alquran/alquran.dart'
    show
        AlquranBloc,
        AlquranLoaded,
        AlquranLoading,
        AlquranError,
        AlquranState,
        AyatTile,
        GetDetailSuratRequest,
        GetTafsirSuratRequest;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BacaAlQuranPage extends StatelessWidget {
  const BacaAlQuranPage._({required this.nomorSurat, required this.namaSurat});
  final int nomorSurat;
  final String namaSurat;

  static Route<void> route(int nomorSurat, String namaSurat,
      {required AlquranBloc bloc}) {
    return MaterialPageRoute<void>(
        builder: (_) => BlocProvider.value(
              value: bloc,
              child: BacaAlQuranPage._(
                nomorSurat: nomorSurat,
                namaSurat: namaSurat,
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return _BacaAlQuranView(
      nomorSurat: nomorSurat,
      namaSurat: namaSurat,
    );
  }
}

class _BacaAlQuranView extends StatefulWidget {
  const _BacaAlQuranView({required this.nomorSurat, required this.namaSurat});
  final int nomorSurat;
  final String namaSurat;

  @override
  State<_BacaAlQuranView> createState() => _BacaAlQuranViewState();
}

class _BacaAlQuranViewState extends State<_BacaAlQuranView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late String _namaSurat;

  @override
  void initState() {
    /// Initialize tab controller
    _tabController = TabController(
        initialIndex: widget.nomorSurat - 1,
        length: context.read<AlquranBloc>().state.alqurans.length,
        animationDuration: const Duration(milliseconds: 300),
        vsync: this);

    /// Set initial namaSurat
    _namaSurat = widget.namaSurat;
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: SafeArea(
        child: Center(
          child: BlocBuilder<AlquranBloc, AlquranState>(
            builder: (context, state) {
              if (state is AlquranLoading) {
                return SkelentonListAyat();
              } else if (state is AlquranLoaded) {
                return TabBarView(
                  controller: _tabController,
                  children: [
                    for (final surat in state.alqurans)
                      ListView.builder(
                        itemCount: surat.ayat.length == surat.tafsir.length
                            ? surat.ayat.length
                            : 0,
                        itemBuilder: (context, index) {
                          final ayat = surat.ayat[index];
                          final tafsir = surat.tafsir[index];
                          return AyatTile(
                            ayat: ayat,
                            tafsir: tafsir,
                            namaSurat: surat.namaLatin,
                          );
                        },
                      ),
                  ],
                );
              } else if (state is AlquranError) {
                return Text(state.message);
              }

              return SizedBox();
            },
          ),
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      title: Text('Surat $_namaSurat'),
      backgroundColor: AppColor.primary,
      foregroundColor: Colors.white,
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        )
      ],
      bottom: TabBar(
        controller: _tabController,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white,
        indicatorColor: Colors.white,
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        onTap: (index) {
          if (context.read<AlquranBloc>().state.alqurans[index].ayat.isEmpty &&
              context
                  .read<AlquranBloc>()
                  .state
                  .alqurans[index]
                  .tafsir
                  .isEmpty) {
            context.read<AlquranBloc>().add(GetDetailSuratRequest(index + 1));
            context.read<AlquranBloc>().add(GetTafsirSuratRequest(index + 1));
          }
          setState(() {
            _namaSurat =
                context.read<AlquranBloc>().state.alqurans[index].namaLatin;
          });
        },
        tabs: [
          for (final surat in context.read<AlquranBloc>().state.alqurans)
            Tab(
              text: surat.namaLatin,
            )
        ],
      ),
    );
  }
}
