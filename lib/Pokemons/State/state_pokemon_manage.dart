import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loginsignup2/Pokemons/models/pokemon_model.dart';
import 'package:loginsignup2/Pokemons/provider/pokemon_provider.dart';

/// A provider that asynchronously expose the current data.
final pokemonStateFuture = FutureProvider<Pokemon>((ref) async {
  return PokemonProvider().getPokemons();
});