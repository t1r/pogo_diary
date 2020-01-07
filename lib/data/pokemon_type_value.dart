  
import 'package:meta/meta.dart';

enum PokemonTypes {
  Normal,
  Fighting, 
  Flying,
  Poison,
  Ground,
  Rock,
  Bug,
  Ghost,
  Steel,
  Fire,
  Water,
  Grass,
  Electric,
  Psychic,
  Ice, 
  Dragon,
  Dark,
  Fairy
}

class PokemonTypeValue {
  PokemonTypeValue({
    @required this.type,
    @required this.value,
  });

  final PokemonTypes type;
  final double value;
}