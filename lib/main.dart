import 'package:flutter/material.dart';
import 'package:pogo_diary/pages/home.dart';

import 'blocs/bloc_provider.dart';
import 'blocs/pokemon_type_chips_bloc.dart';

Future<void> main() async {
  debugPrintRebuildDirtyWidgets = true;
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PokemonTypeChipsBloc>(
        bloc: PokemonTypeChipsBloc(),
        child: MaterialApp(
          title: 'Movies',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: HomePage(),
        ));
  }
}