import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:loginsignup2/Pokemons/models/user_req_model.dart';

Future<UserReq> getUserReq() async {
    final response = 
        await http.get(Uri.parse('https://reqres.in/api/users/2'));

    if (response.statusCode == 200) {
      final Map<String, dynamic>list = json.decode(response.body);
      print('******');
      // print(list);
      final parse = UserReq.fromJson(list);
      print('DATA: ${parse.data.email}');
      print('Provider: ${parse.toString()}');
      return parse;
    } else {
      throw Exception('No se puede obtener la respuesta');
    }
  }