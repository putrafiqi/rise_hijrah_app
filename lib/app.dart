import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import 'features/alquran/alquran.dart'
    show
        AlQuranPage,
        AlQuranRepository,
        AlQuranRepositoryImpl,
        AlQuranRemoteDataSourceImpl;

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
      child: AlQuranPage(),
    );
  }
}
