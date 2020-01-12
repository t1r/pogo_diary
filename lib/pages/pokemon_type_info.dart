import 'package:flutter/material.dart';
import 'package:pogo_diary/blocs/bloc_provider.dart';
import 'package:pogo_diary/blocs/pokemon_type_info_bloc.dart';
import 'package:pogo_diary/data/pokemon_type_value.dart';
import 'package:pogo_diary/widgets/pokemon_type_chip.dart';

class PokemonTypeInfoPage extends StatelessWidget {
  final PokemonTypeChip chip;

  PokemonTypeInfoPage({
    Key key,
    @required this.chip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PokemonTypeInfoBloc infoBloc =
        BlocProvider.of<PokemonTypeInfoBloc>(context);
    infoBloc.fetchPokemonInfoByType.add(chip.pokemonType);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon type: ${chip.name}'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 16)),
            PokemonTypeChipWidget(chip: chip),
            Padding(padding: EdgeInsets.only(top: 16)),
            Text("Weak to",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            StreamBuilder<List<PokemonTypeChip>>(
                stream: infoBloc.outValnurableTypeInfo,
                initialData: [],
                builder: (BuildContext context,
                    AsyncSnapshot<List<PokemonTypeChip>> snapshot) {
                  return ListView(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      shrinkWrap: true,
                      children: snapshot.data
                          .map((c) => PokemonTypeChipWidget(chip: c))
                          .toList());
                }),
            Padding(padding: EdgeInsets.only(top: 16)),
            Text("Resists to",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            StreamBuilder<List<PokemonTypeChip>>(
                stream: infoBloc.outResistantTypeInfo,
                initialData: [],
                builder: (BuildContext context,
                    AsyncSnapshot<List<PokemonTypeChip>> snapshot) {
                  return ListView(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      shrinkWrap: true,
                      children: snapshot.data
                          .map((c) => PokemonTypeChipWidget(chip: c))
                          .toList());
                }),
          ],
        ),
      ),
    );
  }
}
