import 'package:pogo_diary/data/pokemon_types.dart';

class PokemonTypesDataSource {
  static const RESISTANT = 0.625;
  static const VERY_RESISTANT = 0.39;
  static const WEAK = 1.6;

  final pokemonTypeValues = Map.fromEntries([
    bugEntry, darkEntry, dragonEntry,
    electricEntry, fairyEntry, fightingEntry,
    fireEntry, flyingEntry, ghostEntry, 
    grassEntry, groundEntry, iceEntry, 
    normalEntry, poisonEntry, psychicEntry, 
    rockEntry, steelEntry, waterEntry
    ]);

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

  static MapEntry<PokemonType, Map<PokemonType, double>> dragonEntry  = MapEntry(PokemonType.Dragon, {
    PokemonType.Electric : RESISTANT,
    PokemonType.Fire : RESISTANT,
    PokemonType.Grass : RESISTANT,
    PokemonType.Water : RESISTANT,
    PokemonType.Dragon : WEAK,
    PokemonType.Fairy : WEAK,
    PokemonType.Ice : WEAK,
  });  

  static MapEntry<PokemonType, Map<PokemonType, double>> electricEntry  = MapEntry(PokemonType.Electric, {
    PokemonType.Electric : RESISTANT,
    PokemonType.Flying : RESISTANT,
    PokemonType.Steel : RESISTANT,
    PokemonType.Ground : WEAK,
  }); 

  static MapEntry<PokemonType, Map<PokemonType, double>> fairyEntry  = MapEntry(PokemonType.Fairy, {
    PokemonType.Bug : RESISTANT,
    PokemonType.Dark : RESISTANT,
    PokemonType.Fighting : RESISTANT,
    PokemonType.Dragon : VERY_RESISTANT,
    PokemonType.Poison : WEAK,
    PokemonType.Steel : WEAK,
  }); 

  static MapEntry<PokemonType, Map<PokemonType, double>> fightingEntry  = MapEntry(PokemonType.Fighting, {
    PokemonType.Bug : RESISTANT,
    PokemonType.Dark : RESISTANT,
    PokemonType.Rock : RESISTANT,
    PokemonType.Fairy : WEAK,
    PokemonType.Flying : WEAK,
    PokemonType.Psychic : WEAK,
  }); 

  static MapEntry<PokemonType, Map<PokemonType, double>> fireEntry  = MapEntry(PokemonType.Fire, {
    PokemonType.Bug : RESISTANT,
    PokemonType.Fire : RESISTANT,
    PokemonType.Fairy : RESISTANT,
    PokemonType.Grass : RESISTANT,
    PokemonType.Ice : RESISTANT,
    PokemonType.Steel : RESISTANT,
    PokemonType.Ground : WEAK,
    PokemonType.Rock : WEAK,
    PokemonType.Water : WEAK,
  });  

  static MapEntry<PokemonType, Map<PokemonType, double>> flyingEntry  = MapEntry(PokemonType.Flying, {
    PokemonType.Bug : RESISTANT,
    PokemonType.Fighting : RESISTANT,
    PokemonType.Grass : RESISTANT,
    PokemonType.Ground : VERY_RESISTANT,
    PokemonType.Electric : WEAK,
    PokemonType.Ice : WEAK,
    PokemonType.Rock : WEAK,
  });

  static MapEntry<PokemonType, Map<PokemonType, double>> ghostEntry  = MapEntry(PokemonType.Ghost, {
    PokemonType.Bug : RESISTANT,
    PokemonType.Poison : RESISTANT,
    PokemonType.Fighting : VERY_RESISTANT,
    PokemonType.Normal : VERY_RESISTANT,
    PokemonType.Dark : WEAK,
    PokemonType.Ghost : WEAK,
  });

  static MapEntry<PokemonType, Map<PokemonType, double>> grassEntry  = MapEntry(PokemonType.Grass, {
    PokemonType.Electric : RESISTANT,
    PokemonType.Grass : RESISTANT,
    PokemonType.Ground : RESISTANT,
    PokemonType.Water : RESISTANT,
    PokemonType.Bug : WEAK,
    PokemonType.Fire : WEAK,
    PokemonType.Flying : WEAK,
    PokemonType.Ice : WEAK,
    PokemonType.Poison : WEAK,
  });

  static MapEntry<PokemonType, Map<PokemonType, double>> groundEntry  = MapEntry(PokemonType.Ground, {
    PokemonType.Poison : RESISTANT,
    PokemonType.Rock : RESISTANT,
    PokemonType.Electric : VERY_RESISTANT,
    PokemonType.Grass : WEAK,
    PokemonType.Ice : WEAK,
    PokemonType.Water : WEAK,
  });

  static MapEntry<PokemonType, Map<PokemonType, double>> iceEntry  = MapEntry(PokemonType.Ice, {
    PokemonType.Ice : RESISTANT,
    PokemonType.Fighting : WEAK,
    PokemonType.Fire : WEAK,
    PokemonType.Rock : WEAK,
    PokemonType.Steel : WEAK,
  });  

  static MapEntry<PokemonType, Map<PokemonType, double>> normalEntry  = MapEntry(PokemonType.Normal, {
    PokemonType.Ghost : VERY_RESISTANT,
    PokemonType.Fighting : WEAK,
  }); 

  static MapEntry<PokemonType, Map<PokemonType, double>> poisonEntry  = MapEntry(PokemonType.Poison, {
    PokemonType.Bug : RESISTANT,
    PokemonType.Fighting : RESISTANT,
    PokemonType.Fairy : RESISTANT,
    PokemonType.Grass : RESISTANT,
    PokemonType.Poison : RESISTANT,
    PokemonType.Ground : WEAK,
    PokemonType.Psychic : WEAK,
  }); 

  static MapEntry<PokemonType, Map<PokemonType, double>> psychicEntry  = MapEntry(PokemonType.Psychic, {
    PokemonType.Fighting : RESISTANT,
    PokemonType.Psychic : RESISTANT,
    PokemonType.Bug : WEAK,
    PokemonType.Dark : WEAK,
    PokemonType.Ghost : WEAK,
  }); 

  static MapEntry<PokemonType, Map<PokemonType, double>> rockEntry  = MapEntry(PokemonType.Rock, {
    PokemonType.Fire : RESISTANT,
    PokemonType.Flying : RESISTANT,
    PokemonType.Normal : RESISTANT,
    PokemonType.Poison : RESISTANT,
    PokemonType.Fighting : WEAK,
    PokemonType.Grass : WEAK,
    PokemonType.Ground : WEAK,
    PokemonType.Steel : WEAK,
    PokemonType.Water : WEAK,
  }); 

  static MapEntry<PokemonType, Map<PokemonType, double>> steelEntry  = MapEntry(PokemonType.Steel, {
    PokemonType.Bug : RESISTANT,
    PokemonType.Dragon : RESISTANT,
    PokemonType.Flying : RESISTANT,
    PokemonType.Fairy : RESISTANT,
    PokemonType.Grass : RESISTANT,
    PokemonType.Ice : RESISTANT,
    PokemonType.Normal : RESISTANT,
    PokemonType.Psychic : RESISTANT,
    PokemonType.Rock : RESISTANT,
    PokemonType.Steel : RESISTANT,
    PokemonType.Poison : VERY_RESISTANT,
    PokemonType.Fighting : WEAK,
    PokemonType.Fire : WEAK,
    PokemonType.Ground : WEAK,
  }); 

  static MapEntry<PokemonType, Map<PokemonType, double>> waterEntry  = MapEntry(PokemonType.Water, {
    PokemonType.Fire : RESISTANT,
    PokemonType.Ice : RESISTANT,
    PokemonType.Steel : RESISTANT,
    PokemonType.Water : RESISTANT,
    PokemonType.Electric : WEAK,
    PokemonType.Grass : WEAK,
  });  
}