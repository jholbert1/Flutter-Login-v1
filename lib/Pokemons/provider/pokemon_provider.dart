import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:loginsignup2/Pokemons/models/pokemon_model.dart';

class PokemonProvider {
  Future <Pokemon> getPokemons() async {
    final response = 
        await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/'));

    if (response.statusCode == 200) {
      final Map<String, dynamic>list = json.decode(response.body);
      final parse = Pokemon.fromJson(list);
      return parse;
    } else {
      throw Exception('No se puede obtener la respuesta');
    }
  }

  // Future getImagePokemon(int pokemonId) async {
  //   final response = 
  //       await http.get(Uri.parse(
  //         'https://pokeres.bastionbot.org/images/pokemon/$pokemonId.png'
  //       ));

  //   if (response.statusCode == 200) {
  //     final pokemonImage = json.decode(response.body);
  //     return pokemonImage;
  //   } else {
  //     throw Exception('No se puede obtener la respuesta');
  //   }
  // }
}