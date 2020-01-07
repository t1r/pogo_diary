import 'package:flutter/material.dart';
import 'package:pogo_diary/blocs/bloc_provider.dart';
import 'package:pogo_diary/blocs/pokemon_types_bloc.dart';
import 'package:pogo_diary/data/pokemon_type_value.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PokemonTypesBloc typesBloc = BlocProvider.of<PokemonTypesBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StreamBuilder<List<PokemonTypes>>(
                stream: typesBloc.outTypes,
                initialData: [],
                builder: (BuildContext context, AsyncSnapshot<List<PokemonTypes>> snapshot) {
                  return Text('Types: ${snapshot.data}');
                }),
          ],
        ),
      ),
    );
  }
}
