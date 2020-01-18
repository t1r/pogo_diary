import 'package:flutter/material.dart';
import 'package:pogo_diary/pages/pokemon_types_page.dart';

import 'blocs/bloc_provider.dart';
import 'blocs/pokemon_type_chips_bloc.dart';
import 'core/theme.dart';

Future<void> main() async {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PokemonTypeChipsBloc>(
        bloc: PokemonTypeChipsBloc(),
        child: MaterialApp(
          title: 'PoGo Diary',
          theme: PoGoDiaryTheme.theme,
          home: PokemonTypesPage(),
        ));
  }
}