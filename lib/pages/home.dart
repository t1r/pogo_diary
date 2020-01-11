import 'package:flutter/material.dart';
import 'package:pogo_diary/blocs/bloc_provider.dart';
import 'package:pogo_diary/blocs/pokemon_types_bloc.dart';
import 'package:pogo_diary/data/pokemon_type_value.dart';
import 'package:pogo_diary/data/pokemon_types.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PokemonTypesBloc typesBloc =
        BlocProvider.of<PokemonTypesBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: StreamBuilder<List<PokemonTypeChip>>(
            stream: typesBloc.outTypes,
            initialData: [],
            builder: (BuildContext context,
                AsyncSnapshot<List<PokemonTypeChip>> snapshot) {
              return GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                padding: const EdgeInsets.all(4.0),
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                children: snapshot.data.map((t) {
                  return RaisedButton(
                    onPressed: null,
                    color: t.backgroundColor,
                    disabledColor: t.backgroundColor,
                    textColor: t.textColor,
                    disabledTextColor: t.textColor,
                    child: Text(
                      t.name,
                      style: TextStyle(fontSize: 20),
                    ),
                  );
                }).toList(),
              );
            }),
      ),
    );
  }
}
