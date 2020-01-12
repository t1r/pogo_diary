import 'package:flutter/material.dart';
import 'package:pogo_diary/blocs/pokemon_type_info_bloc.dart';
import 'package:pogo_diary/data/pokemon_type_value.dart';
import 'package:pogo_diary/data/pokemon_types.dart';
import 'package:pogo_diary/widgets/pokemon_type_chip.dart';

class PokemonTypeInfoPage extends StatelessWidget {
  final PokemonTypeChip chip;

  PokemonTypeInfoPage({
    Key key,
    @required this.chip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var infoBloc = PokemonTypeInfoBloc();
    // infoBloc.fetchPokemonInfoByType(PokemonType.Bug);

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
            Text("Vulnerable",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ListView(
                padding: const EdgeInsets.only(left: 16, right: 16),
                shrinkWrap: true,
                children: <Widget>[
                  PokemonTypeChipWidget(chip: chip),
                  PokemonTypeChipWidget(chip: chip),
                  PokemonTypeChipWidget(chip: chip)
                ]),
            Padding(padding: EdgeInsets.only(top: 16)),
            Text("Resistant",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ListView(
                padding: const EdgeInsets.only(left: 16, right: 16),
                shrinkWrap: true,
                children: <Widget>[
                  PokemonTypeChipWidget(chip: chip),
                  PokemonTypeChipWidget(chip: chip),
                  PokemonTypeChipWidget(chip: chip)
                ]),
          ],
        ),
      ),
    );
  }
}
