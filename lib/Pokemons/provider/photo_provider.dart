import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:loginsignup2/Pokemons/models/photo_model.dart';
import 'package:loginsignup2/Pokemons/models/users_model.dart';

class JsonPlaceholderProvider {
  
  Future<List<Photo>> getPhotos() async {
    final response =
        await http.get('https://jsonplaceholder.typicode.com/photos');

    if (response.statusCode == 200) {
      var list = json.decode(response.body) as List<dynamic>;

      List<Photo> photos = list.map((model) => Photo.fromJson(model)).toList();

      return photos;
    } else {
      throw Exception('No se puede obtener la fotos');
    }
  }

  Future<List<User>> getUsers() async {
    final response =
        await http.get('https://jsonplaceholder.typicode.com/users');

    if (response.statusCode == 200) {
      var list = json.decode(response.body) as List<dynamic>;

      List<User> users = list.map((model) => User.fromJson(model)).toList();

      return users;
    } else {
      throw Exception('No se puede obtener la fotos');
    }
  }
}
