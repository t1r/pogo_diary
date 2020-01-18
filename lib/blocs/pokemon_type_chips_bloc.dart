import 'dart:async';

import 'package:pogo_diary/blocs/bloc_provider.dart';
import 'package:pogo_diary/data/pokemon_type_value.dart';

class PokemonTypeChipsBloc implements BlocBase {
  final _typesDs = PokemonTypesDataSource();
  
  StreamController<List<PokemonTypeChip>> _typesController = StreamController<List<PokemonTypeChip>>();
  StreamSink<List<PokemonTypeChip>> get _inTypes => _typesController.sink;
  Stream<List<PokemonTypeChip>> get outTypes => _typesController.stream;

  PokemonTypeChipsBloc() {
    _inTypes.add(_typesDs.pokemonTypeChips);
  }

  @override
  void dispose() {
    _typesController.close();    
  }
}