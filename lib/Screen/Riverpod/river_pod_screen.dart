import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverPod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final incrementProvider = ChangeNotifierProvider((ref) => IncrementNotifier());
    return Scaffold(
      appBar: AppBar(
        title: Text("RiverPod Tutorial")
      ),
      body: Center(
        child: Consumer(
          builder: (context, watch, child) {
            final incrementNotifier = watch(incrementProvider);
            return Text(incrementNotifier.value.toString());
          }
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(incrementProvider);
            context.read(incrementProvider).increment();
          },
          child: Icon(Icons.add),
      ),
    );
  }
}

class IncrementNotifier extends ChangeNotifier {
  int _value = 0;
  int get value => _value;

  void increment() {
    _value += 1;
    notifyListeners();
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final incrementProvider = ChangeNotifierProvider((ref) => IncrementNotifier());
    return Container(
      child: Center(
        child: Consumer(
          builder: (context, watch, child) {
            final incrementNotifier = watch(incrementProvider);
            return Text(incrementNotifier.value.toString());
          }
        )
      )
    );
  }
  /*
  FORMA DE LLAMAR RIVERPOD PROVIDER CAMBIAR TEXTO ***
  Widget build(BuildContext context) {
    final greetingProvider = Provider((ref) => 'Hello riverpod 2');
    return Container(
      child: Center(
        child: Consumer(
          builder: (context, watch, child) {
            final greeting = watch(greetingProvider);
            return Text(greeting);
          }
        )
      )
    );
  }*/
}