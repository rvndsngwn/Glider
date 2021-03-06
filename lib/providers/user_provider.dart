import 'package:glider/models/user.dart';
import 'package:glider/providers/repository_provider.dart';
import 'package:glider/repositories/api_repository.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// ignore: implementation_imports
import 'package:riverpod/src/framework.dart';

final AutoDisposeFutureProviderFamily<User, String> userProvider =
    FutureProvider.autoDispose
        .family((AutoDisposeProviderReference ref, String id) async {
  final ApiRepository repository = ref.read(apiRepositoryProvider);
  return repository.getUser(id);
});
