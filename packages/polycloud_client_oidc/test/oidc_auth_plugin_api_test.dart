import 'package:test/test.dart';
import 'package:polycloud_client_oidc/polycloud_client_oidc.dart';


/// tests for OidcAuthPluginApi
void main() {
  final instance = PolycloudClientOidc().getOidcAuthPluginApi();

  group(OidcAuthPluginApi, () {
    //Future<AuthResult> authenticate({ String authorization }) async
    test('test authenticate', () async {
      // TODO
    });

    //Future<String> token({ BuiltMap<String, String> all, bool empty }) async
    test('test token', () async {
      // TODO
    });

  });
}
