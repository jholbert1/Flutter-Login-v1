import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loginsignup2/Pokemons/State/state_manage.dart';
import 'package:loginsignup2/Pokemons/models/photo_model.dart';
import 'package:loginsignup2/Pokemons/models/users_model.dart';

class JsonPlaceholderScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    AsyncValue<List<Photo>> photos = watch(photostateFuture);
    AsyncValue<List<User>> users = watch(userstateFuture);
    return users.when(
        loading: () => Center(child: const CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('${error.toString()}')),
        data: (value) {
          return ListView.builder(
            itemCount: value.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                // leading: CircleAvatar(
                //     backgroundImage: NetworkImage(value[index].url)),
                title: Text(value[index].name),
              );
            },
          );
        });
  }
}
