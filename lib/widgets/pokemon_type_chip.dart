import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pogo_diary/data/pokemon_type_value.dart';

class PokemonTypeChipWidget extends StatelessWidget {
  final PokemonTypeChip chip;
  final void Function() onPressed;

  PokemonTypeChipWidget({
    Key key,
    @required this.chip,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
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
