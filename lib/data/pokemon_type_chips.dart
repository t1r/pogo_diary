import 'dart:ui';

import 'package:pogo_diary/core/app_colors.dart';
import 'package:pogo_diary/data/pokemon_types.dart';

class PokemonTypeChipsDataSource {

  final pokemonTypeChips = <PokemonTypeChip>[
    PokemonTypeChip(
      pokemonType: PokemonType.Bug,
      name: 'Bug', 
      backgroundColor: Color(0xFFa8b820), 
      textColor: AppColors.white),
    PokemonTypeChip(
      pokemonType: PokemonType.Dark,
      name: 'Dark', 
      backgroundColor: Color(0xFF735a4a), 
      textColor: AppColors.white),
    PokemonTypeChip(
      pokemonType: PokemonType.Dragon,
      name: 'Dragon', 
      backgroundColor: Color(0xFF7038f8), 
      textColor: AppColors.white),
    PokemonTypeChip(
      pokemonType: PokemonType.Electric,
      name: 'Electric', 
      backgroundColor: Color(0xFFf8d030), 
      textColor: AppColors.white),
    PokemonTypeChip(
      pokemonType: PokemonType.Fairy,
      name: 'Fairy', 
      backgroundColor: Color(0xFFee99ac), 
      textColor: AppColors.white),
    PokemonTypeChip(
      pokemonType: PokemonType.Fighting,
      name: 'Fighting', 
      backgroundColor: Color(0xFFc03028), 
      textColor: AppColors.white),
    PokemonTypeChip(
      pokemonType: PokemonType.Fire,
      name: 'Fire', 
      backgroundColor: Color(0xFFf08030), 
      textColor: AppColors.white),
    PokemonTypeChip(
      pokemonType: PokemonType.Flying,
      name: 'Flying', 
      backgroundColor: Color(0xFFa890f0), 
      textColor: AppColors.white),
    PokemonTypeChip(
      pokemonType: PokemonType.Ghost,
      name: 'Ghost', 
      backgroundColor: Color(0xFF6363b5), 
      textColor: AppColors.white),
    PokemonTypeChip(
      pokemonType: PokemonType.Grass,
      name: 'Grass', 
      backgroundColor: Color(0xFF78c850), 
      textColor: AppColors.white),
    PokemonTypeChip(
      pokemonType: PokemonType.Ground,
      name: 'Ground', 
      backgroundColor: Color(0xFFe0c068), 
      textColor: AppColors.white),
    PokemonTypeChip(
      pokemonType: PokemonType.Ice,
      name: 'Ice', 
      backgroundColor: Color(0xFF98d8d8), 
      textColor: AppColors.white),
    PokemonTypeChip(
      pokemonType: PokemonType.Normal,
      name: 'Normal', 
      backgroundColor: Color(0xFFa8a878), 
      textColor: AppColors.white),
    PokemonTypeChip(
      pokemonType: PokemonType.Poison,
      name: 'Poison', 
      backgroundColor: Color(0xFFb55aa5), 
      textColor: AppColors.white),
    PokemonTypeChip(
      pokemonType: PokemonType.Psychic,
      name: 'Psychic', 
      backgroundColor: Color(0xFFf85888), 
      textColor: AppColors.white),
    PokemonTypeChip(
      pokemonType: PokemonType.Rock,
      name: 'Rock', 
      backgroundColor: Color(0xFFbda55a), 
      textColor: AppColors.white),
    PokemonTypeChip(
      pokemonType: PokemonType.Steel,
      name: 'Steel', 
      backgroundColor: Color(0xFFb8b8d0), 
      textColor: AppColors.white),
    PokemonTypeChip(
      pokemonType: PokemonType.Water,
      name: 'Water', 
      backgroundColor: Color(0xFF6890f0), 
      textColor: AppColors.white),
  ];
}

class PokemonTypeChip {
  final PokemonType pokemonType;
  final String name;
  final Color textColor;
  final Color backgroundColor;

  PokemonTypeChip({
    this.pokemonType,
    this.name,
    this.textColor,
    this.backgroundColor,
  });
}