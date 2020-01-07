import 'package:flutter/material.dart';
import 'package:pogo_diary/blocs/pokemon_types_bloc.dart';
import 'package:pogo_diary/pages/home.dart';

import 'blocs/bloc_provider.dart';

Future<void> main() async {
//  debugPrintRebuildDirtyWidgets = true;
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PokemonTypesBloc>(
        bloc: PokemonTypesBloc(),
        child: MaterialApp(
          title: 'Movies',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: HomePage(),
        ));
  }
}