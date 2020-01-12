import 'dart:async';

import 'package:pogo_diary/blocs/bloc_provider.dart';
import 'package:pogo_diary/data/pokemon_type_value.dart';
import 'package:pogo_diary/data/pokemon_types.dart';

class PokemonTypeInfoBloc implements BlocBase {
  final _typesDs = PokemonTypesDataSource();

  StreamController<PokemonType> _actionController =
      StreamController<PokemonType>();
  StreamSink get fetchPokemonInfoByType => _actionController.sink;

  StreamController<List<PokemonTypeChip>> _valnurableTypesController =
      StreamController<List<PokemonTypeChip>>();
  // StreamSink<List<PokemonTypeChip>> get _inType => _typesController.sink;
  Stream<List<PokemonTypeChip>> get outValnurableTypeInfo =>
      _valnurableTypesController.stream;

  StreamController<List<PokemonTypeChip>> _resistantTypesController =
      StreamController<List<PokemonTypeChip>>();
  // StreamSink<List<PokemonTypeChip>> get _inType => _typesController.sink;
  Stream<List<PokemonTypeChip>> get outResistantTypeInfo =>
      _resistantTypesController.stream;

  PokemonTypeInfoBloc() {
    _actionController.stream.listen(_emitTypeInfo);
  }

  void _emitTypeInfo(PokemonType type) {
    var index = PokemonType.values.indexOf(PokemonType.Steel);
    var typeValues = _typesDs.pokemonTypeValues[index];
    _emitValnurables(typeValues);
    _emitResistants(typeValues);
  }

  void _emitValnurables(List<double> typeValues) {
    final typesMap = typeValues.asMap();
    typesMap.removeWhere((i, value) => value <= 0);
    final filtredTypes =
        typesMap.keys.map((index) => PokemonType.values[index]);

    final valnurableList = _typesDs.pokemonTypeChips
        .where((chip) => filtredTypes.contains(chip.pokemonType))
        .toList();

    _valnurableTypesController.add(valnurableList);
  }

  void _emitResistants(List<double> typeValues) {
    final typesMap = typeValues.asMap();
    typesMap.removeWhere((i, value) => value >= 0);
    final filtredTypes =
        typesMap.keys.map((index) => PokemonType.values[index]);

    final resistantList = _typesDs.pokemonTypeChips
        .where((chip) => filtredTypes.contains(chip.pokemonType))
        .toList();

    _resistantTypesController.add(resistantList);
  }

  @override
  void dispose() {
    _actionController.close();
    _valnurableTypesController.close();
    _resistantTypesController.close();
  }
}
