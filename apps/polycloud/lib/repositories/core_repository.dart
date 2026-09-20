import 'package:polycloud_client_core/polycloud_client_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'core_repository.g.dart';

class CoreRepository {
  /// Override for the basepath to use for the API.
  final String? _basePathOverride;

  /// The client to talk to the core API.
  late final _client = PolycloudClientCore(basePathOverride: _basePathOverride);

  /// List of auth providers we can deal with.
  final _knownAuthProviders = [
    'me.polynom.polycloud.apps.auth.oidc.OIDCAuthPlugin',
  ];

  CoreRepository({this._basePathOverride});

  Future<List<AuthMechanismDto>> fetchAuthMechanisms() async {
    final result = await _client.getCoreApiControllerApi().authMechanisms();

    if (result.statusCode == 200) {
      return result.data!.mechanisms!
          .where((el) => _knownAuthProviders.contains(el.id))
          .toList();
    } else {
      throw Exception('Failed to load auth mechanisms');
    }
  }

  Future<List<EnabledAppDto>> fetchApps(String authToken) async {
    final result = await _client.getCoreApiControllerApi().apps(
      headers: {'Authorization': 'Bearer $authToken'},
    );
    if (result.statusCode == 200) {
      return result.data!.apps!.toList();
    } else {
      throw Exception('Failed to load apps');
    }
  }

  Future<WhoAmIDto> fetchWhoAmI(String authToken) async {
    final result = await _client.getJwtAuthPluginApi().whoami(
      headers: {"Authorization": "Bearer $authToken"},
    );
    if (result.statusCode != 200) {
      throw Exception("Failed to get user info");
    }

    return result.data!;
  }
}

@riverpod
CoreRepository coreRepository(Ref ref) {
  return CoreRepository();
}
