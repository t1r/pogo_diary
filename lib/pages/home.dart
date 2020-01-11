import 'package:flutter/material.dart';
import 'package:pogo_diary/blocs/bloc_provider.dart';
import 'package:pogo_diary/blocs/pokemon_type_chips_bloc.dart';
import 'package:pogo_diary/data/pokemon_type_value.dart';
import 'package:pogo_diary/widgets/pokemon_type_chip.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PokemonTypeChipsBloc typesBloc =
        BlocProvider.of<PokemonTypeChipsBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon Type List'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: StreamBuilder<List<PokemonTypeChip>>(
            stream: typesBloc.outTypes,
            initialData: [],
            builder: (BuildContext context, AsyncSnapshot<List<PokemonTypeChip>> snapshot) {
              return GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                padding: const EdgeInsets.all(4.0),
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                children: snapshot.data.map((t) {
                  return PokemonTypeChipWidget(chip: t);
                }).toList(),
              );
            }),
      ),
    );
  }
}
