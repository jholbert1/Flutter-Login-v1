import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loginsignup2/Pokemons/models/user_req_model.dart';
import 'package:loginsignup2/Pokemons/provider/user_req_provider.dart';

final getUsersReq = FutureProvider<UserReq>((ref) async {
  return getUserReq();
});