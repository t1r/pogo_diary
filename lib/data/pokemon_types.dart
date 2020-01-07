import 'dart:collection';
import 'package:pogo_diary/data/pokemon_type_value.dart';
import 'pokemon_type_value.dart';
import 'package:tuple/tuple.dart';

var normalMap = {
  Tuple2(PokemonTypes.Normal, PokemonTypes.Normal): 1,
  Tuple2(PokemonTypes.Normal, PokemonTypes.Normal): 1,
};

var pokemonTypeValues = const <List<double>>[
  const <double>[1, 1, 1, 1, 1, 0.8, 1, 0.8, 0.8, 1, 1, 1, 1, 1, 1, 1, 1, 1],
  const <double>[1.25, 1, 0.8, 0.8, 1, 1.25, 0.8, 0.8, 1,25, 1, 1, 1, 1, 0.8, 1.25, 1, 0.8],
  const <double>[1, 1.25, 1, 1, 1, 0.8, 1.25, 1, 0.8, 1, 1, 1.25, 0.8, 1, 1, 1, 1, 1],
  const <double>[1, 1, 1, 0.8, 0.8, 0.8, 1, 0.8, 0.8, 1, 1, 1.25, 1, 1, 1, 1, 1, 1.25],
  const <double>[1, 1, 0.8, 1.25, 1, 1.25, 0.8, 1, 1.25, 1.25, 1, 0.8, 1.25, 1, 1, 1, 1, 1],
  const <double>[1, 0.8, 1.25, 1, 0.8, 1, 1.25, 1, 0.8, 1.25, 1, 1, 1, 1, 1.25, 1, 1, 1],
  const <double>[1, 0.8, 0.8, 0.8, 1, 1, 1, 0.8, 0.8, 0.8, 1, 1.25, 1, 1.25, 1, 1, 1.25, 0.8],
  const <double>[0.8, 1, 1, 1, 1, 1, 1, 1.25, 1, 1, 1, 1, 1, 1.25, 1, 1, 0.8, 1],
  const <double>[1, 1, 1, 1, 1, 1.25, 1, 1, 0.8, 0.8, 0.8, 1, 0.8, 1, 1.25, 1, 1, 1.25],
  const <double>[1, 1, 1, 1, 1, 0.8, 1.25, 1, 1.25, 0.8, 0.8, 1.25, 1, 1, 1.25, 0.8, 1, 1],
  const <double>[1, 1, 1, 1, 1.25, 1.25, 1, 1, 1, 1.25, 0.8, 0.8, 1, 1, 1, 0.8, 1, 1],
  const <double>[1, 1, 0.8, 0.8, 1.25, 1.25, 0.8, 1,  0.8, 0.8, 1.25, 0.8, 1, 1, 1, 0.8, 1, 1],
  const <double>[1, 1, 1.25, 1, 0.8, 1, 1, 1, 1, 1, 1.25, 0.8, 0.8, 1, 1,  0.8, 1, 1],
  const <double>[1, 1.25, 1, 1.25, 1, 1, 1, 1, 0.8, 1, 1, 1, 1, 0.8, 1, 1, 0.8, 1],
  const <double>[1, 1, 1.25, 1, 1.25, 1, 1, 1, 0.8, 0.8, 0.8, 1.25, 1, 1, 0.8, 1.25, 1, 1],
  const <double>[1, 1, 1, 1, 1, 1, 1, 1, 0.8, 0.8, 0.8, 1.25, 1, 1, 0.8, 1.25, 1, 1],
  const <double>[1, 0.8, 1, 1, 1, 1, 1, 1.25, 1, 1, 1, 1, 1, 1.25, 1, 1, 0.8, 0.8],
  const <double>[1, 1.25, 1, 0.8, 1, 1, 1, 1, 0.8, 0.8, 1, 1, 1, 1, 1, 1.25, 1.25, 1],
];

void dd() {
  pokemonTypeValues.forEach((f)=>
    print(f.length)
  );
}