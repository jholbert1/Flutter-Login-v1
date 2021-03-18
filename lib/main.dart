import 'package:flutter/material.dart';
import 'package:loginsignup2/Pokemons/Screen/json_placeholder_test.dart';
import 'package:loginsignup2/Screen/Riverpod/river_pod_screen.dart';
import 'package:loginsignup2/Screen/Welcome/welcome_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'Pokemons/Screen/pokemons_screen.dart';

// void main() => runApp(MyApp());
void main() => runApp(
  ProviderScope(
    child: MyApp()
  )
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: Text('Pokemons'),),
        // body: WelcomeScreen()
        body: PokemonScreen()
        // body: JsonPlaceholderScreen()
      ),
    );
  }
}