import 'package:alquran_app/features/alquran/alquran.dart'
    show
        AlquranBloc,
        AlquranLoaded,
        AlquranLoading,
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
              value: bloc
                ..add(GetDetailSuratRequest(nomorSurat))
                ..add(GetTafsirSuratRequest(nomorSurat)),
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

    /// Listen to tab changes
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        context.read<AlquranBloc>()
          ..add(GetDetailSuratRequest(_tabController.index + 1))
          ..add(GetTafsirSuratRequest(_tabController.index + 1));
        setState(() {
          _namaSurat = context
              .read<AlquranBloc>()
              .state
              .alqurans[_tabController.index]
              .namaLatin;
        });
      }
    });

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
                return const CircularProgressIndicator();
              } else if (state is AlquranLoaded) {
                return TabBarView(
                  controller: _tabController,
                  children: [
                    for (final surat in state.alqurans)
                      ListView.builder(
                        itemCount: surat.ayat.length,
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
      backgroundColor: Colors.blue[700],
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
        indicatorColor: Colors.blue[900],
        tabAlignment: TabAlignment.start,
        isScrollable: true,
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
