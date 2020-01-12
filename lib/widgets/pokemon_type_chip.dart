import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pogo_diary/blocs/bloc_provider.dart';
import 'package:pogo_diary/blocs/pokemon_type_info_bloc.dart';
import 'package:pogo_diary/data/pokemon_type_value.dart';
import 'package:pogo_diary/pages/pokemon_type_info.dart';

class PokemonTypeChipWidget extends StatelessWidget {
  final PokemonTypeChip chip;

  PokemonTypeChipWidget({
    Key key,
    @required this.chip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return BlocProvider<PokemonTypeInfoBloc>(
            bloc: PokemonTypeInfoBloc(),
            child: PokemonTypeInfoPage(chip: chip),
          );
        }));
      },
      color: chip.backgroundColor,
      disabledColor: chip.backgroundColor,
      textColor: chip.textColor,
      disabledTextColor: chip.textColor,
      child: Text(
        chip.name,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
