import 'package:alquran_app/core/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import 'features/alquran/alquran.dart'
    show
        AlQuranPage,
        AlQuranRemoteDataSourceImpl,
        AlQuranRepository,
        AlQuranRepositoryImpl,
        AlquranBloc,
        GetAllSurat,
        GetSuratById,
        GetTafsirSuratById;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<AlQuranRepository>(
        create: (context) => AlQuranRepositoryImpl(
              AlQuranRemoteDataSourceImpl(
                http.Client(),
              ),
            ),
        child: AppView());
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  bool _isGrid = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AlquranBloc(
        useCaseGetAllSurat: GetAllSurat(context.read<AlQuranRepository>()),
        useCaseGetSuratById: GetSuratById(context.read<AlQuranRepository>()),
        useCaseGetTafsirSuratById:
            GetTafsirSuratById(context.read<AlQuranRepository>()),
      ),
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: AppColor.primary,
          forceMaterialTransparency: true,
          title: const Text('Rise Hijrah'),
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
            return Future.delayed(const Duration(seconds: 1));
          },
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _terakhirBaca(),
                const SizedBox(height: 16),
                _fitur(context),
                const SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Kajian Terbaru',
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColor.primary,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  _isGrid = false;
                                });
                              },
                              icon: Icon(
                                color: _isGrid ? Colors.grey : AppColor.primary,
                                Icons.view_list,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  _isGrid = true;
                                });
                              },
                              icon: Icon(
                                color: _isGrid ? AppColor.primary : Colors.grey,
                                Icons.grid_view,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 4),
                    _isGrid ? _gridKajian() : _listKajian(),
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    );
  }

  void _showSnackBarCoomingSoon() {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text('Coming soon'),
          duration: const Duration(seconds: 1),
        ),
      );
  }

  Widget _listKajian() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: _showSnackBarCoomingSoon,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://placehold.co/600x400/png',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          title: Text('Kajian ${index + 1}'),
          subtitle: Text('Pemateri: Ustadz ${index + 1}'),
        );
      },
    );
  }

  Widget _gridKajian() {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: _showSnackBarCoomingSoon,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColor.primary,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  child: Image.network(
                    'https://placehold.co/600x400/png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Kajian ${index + 1}',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Pemateri: Ustadz ${index + 1}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Column _fitur(
    BuildContext context,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Fitur',
          style: TextStyle(
            fontSize: 20,
            color: AppColor.primary,
          ),
        ),
        const SizedBox(height: 4),
        GridView(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.5,
          ),
          shrinkWrap: true,
          children: [
            Builder(builder: (context) {
              return FeatureAction(
                icon: Icon(Icons.book),
                title: 'Al-Quran',
                onTap: () {
                  Navigator.of(context).push(AlQuranPage.route(
                      bloc: BlocProvider.of<AlquranBloc>(context)));
                },
              );
            }),
            FeatureAction(
              onTap: _showSnackBarCoomingSoon,
              icon: Icon(Icons.timelapse),
              title: 'Waktu Sholat',
            ),
            FeatureAction(
              onTap: _showSnackBarCoomingSoon,
              icon: Icon(Icons.calendar_month),
              title: 'Kalender Hijriah',
            ),
            FeatureAction(
              onTap: _showSnackBarCoomingSoon,
              icon: Icon(Icons.mosque),
              title: 'Masjid Terdekat',
            ),
            FeatureAction(
              onTap: _showSnackBarCoomingSoon,
              icon: Icon(Icons.follow_the_signs),
              title: 'Kiblat',
            ),
          ],
        ),
      ],
    );
  }

  Widget _terakhirBaca() {
    return InkWell(
      onTap: _showSnackBarCoomingSoon,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
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
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
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
    );
  }
}

class FeatureAction extends StatelessWidget {
  const FeatureAction({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  final Icon icon;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: AppColor.primary,
            foregroundColor: Colors.white,
            child: icon,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(color: AppColor.primary, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
