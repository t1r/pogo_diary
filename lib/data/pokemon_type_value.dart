import 'package:pogo_diary/data/pokemon_types.dart';

class PokemonTypesDataSource {
  static const RESISTANT = 0.625;
  static const VERY_RESISTANT = 0.39;
  static const WEAK = 1.6;

  final pokemonTypeValuesV1 = const <List<double>>[
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

  static MapEntry<PokemonType, Map<PokemonType, double>> bugEntry  = MapEntry(PokemonType.Bug, {
    PokemonType.Fighting : RESISTANT,
    PokemonType.Grass : RESISTANT,
    PokemonType.Ground : RESISTANT,
    PokemonType.Fire : WEAK,
    PokemonType.Flying : WEAK,
    PokemonType.Rock : WEAK,
  });  

  static MapEntry<PokemonType, Map<PokemonType, double>> darkEntry  = MapEntry(PokemonType.Dark, {
    PokemonType.Dark : RESISTANT,
    PokemonType.Ghost : RESISTANT,
    PokemonType.Psychic : VERY_RESISTANT,
    PokemonType.Bug : WEAK,
    PokemonType.Fighting : WEAK,
    PokemonType.Fairy : WEAK,
  });  

  final pokemonTypeValues = Map.fromEntries([
    bugEntry, darkEntry
    ]);
}