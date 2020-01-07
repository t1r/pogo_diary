
import 'dart:async';

import 'package:pogo_diary/blocs/bloc_provider.dart';
import 'package:pogo_diary/data/pokemon_type_value.dart';

class PokemonTypesBloc implements BlocBase {
  final _types = PokemonTypes.values;
  
  StreamController<List<PokemonTypes>> _typesController = StreamController<List<PokemonTypes>>();
  StreamSink<List<PokemonTypes>> get _inTypes => _typesController.sink;
  Stream<List<PokemonTypes>> get outTypes => _typesController.stream;

  PokemonTypesBloc() {
    _inTypes.add(_types);
  }

  @override
  void dispose() {
    _typesController.close();    
  }
}