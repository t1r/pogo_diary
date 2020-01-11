import 'package:flutter/material.dart';
import 'package:pogo_diary/blocs/bloc_provider.dart';
import 'package:pogo_diary/blocs/pokemon_types_bloc.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon type: ${chip.name}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            PokemonTypeChipWidget(chip: chip)
          ],
        ),
      ),
    );
  }
}
