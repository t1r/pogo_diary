import 'dart:async';

import 'package:pogo_diary/blocs/bloc_provider.dart';
import 'package:pogo_diary/data/pokemon_type_chips.dart';
import 'package:pogo_diary/data/pokemon_type_value.dart';
import 'package:pogo_diary/data/pokemon_types.dart';
import 'dart:developer' as developer;

class PokemonTypeInfoBloc implements BlocBase {
  final _typesDs = PokemonTypesDataSource();
  final _typeChipsDs = PokemonTypeChipsDataSource();

  StreamController<PokemonType> _actionController = StreamController<PokemonType>();
  StreamSink get fetchPokemonInfoByType => _actionController.sink;

  StreamController<List<PokemonTypeChip>> _valnurableTypesController = StreamController<List<PokemonTypeChip>>();
  Stream<List<PokemonTypeChip>> get outValnurableTypeInfo => _valnurableTypesController.stream;

  StreamController<List<PokemonTypeChip>> _resistantTypesController = StreamController<List<PokemonTypeChip>>();
  Stream<List<PokemonTypeChip>> get outResistantTypeInfo => _resistantTypesController.stream;

  PokemonTypeInfoBloc() {
    _valnurableTypesController.add([]);
    _resistantTypesController.add([]);
    _actionController.stream.listen(_emitTypeInfo);
  }

  void _emitTypeInfo(PokemonType type) {
    var typeValues = _typesDs.pokemonTypeValues[type];

    _emitValnurables(typeValues);
    _emitResistants(typeValues);
  }

  void _emitValnurables(Map<PokemonType, double> typeValues) {
    _valnurableTypesController.add(_mapDataToEmit(typeValues, (type, value)=> value < 1));
  }

  void _emitResistants(Map<PokemonType, double> typeValues) {
    _resistantTypesController.add(_mapDataToEmit(typeValues, (type, value)=> value > 1));
  }

  List<PokemonTypeChip> _mapDataToEmit(Map<PokemonType, double> typeValues, bool removePredicate(dynamic key, dynamic value)) {
    final typesMap = Map.from(typeValues);
    typesMap.removeWhere(removePredicate);
    final filtredTypes = typesMap.keys;

    final resultList = _typeChipsDs.pokemonTypeChips
        .where((chip) => filtredTypes.contains(chip.pokemonType))
        .toList();

    return resultList;
  }

  @override
  void dispose() {
    _actionController.close();
    _valnurableTypesController.close();
    _resistantTypesController.close();
  }
}