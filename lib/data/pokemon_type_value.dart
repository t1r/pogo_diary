  
import 'package:meta/meta.dart';

enum PokemonTypes {
  Bug, Dark, Dragon,
  Electric, Fairy, Fighting,
  Fire, Flying, Ghost,
  Grass, Ground, Ice,
  Normal, Poison, Psychic,
  Rock, Steel, Water
}

class PokemonTypeValue {
  PokemonTypeValue({
    @required this.type,
    @required this.value,
  });

  final PokemonTypes type;
  final double value;
}