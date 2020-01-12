import 'dart:async';

import 'package:pogo_diary/blocs/bloc_provider.dart';
import 'package:pogo_diary/data/pokemon_type_value.dart';
import 'package:pogo_diary/data/pokemon_types.dart';
import 'dart:developer' as developer;

class PokemonTypeInfoBloc implements BlocBase {
  final _typesDs = PokemonTypesDataSource();

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
    var index = PokemonType.values.indexOf(type);
    var typeValues = _typesDs.pokemonTypeValues.map((f)=> f[index]).toList();

    _emitValnurables(typeValues);
    _emitResistants(typeValues);
  }

  void _emitValnurables(List<double> typeValues) {
    _valnurableTypesController.add(_emitData(typeValues, (i, value) => value <= 1));
  }

  void _emitResistants(List<double> typeValues) {
    _resistantTypesController.add(_emitData(typeValues, (i, value) => value >= 1));
  }

  List<PokemonTypeChip> _emitData(List<double> typeValues, bool predicate(dynamic key, dynamic value)) {    
    final typesMap = Map.from(typeValues.asMap());
    typesMap.removeWhere(predicate);
    final filtredTypes = typesMap.keys.map((index) => PokemonType.values[index]);

    final resultList = _typesDs.pokemonTypeChips
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
