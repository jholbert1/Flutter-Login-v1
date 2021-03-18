import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loginsignup2/Pokemons/models/photo_model.dart';
import 'package:loginsignup2/Pokemons/models/users_model.dart';
import 'package:loginsignup2/Pokemons/provider/photo_provider.dart';

/// A provider that asynchronously expose the current data.
final photostateFuture = FutureProvider<List<Photo>>((ref) async {
  return JsonPlaceholderProvider().getPhotos();
});

final userstateFuture = FutureProvider<List<User>>((ref) async {
  return JsonPlaceholderProvider().getUsers();
});