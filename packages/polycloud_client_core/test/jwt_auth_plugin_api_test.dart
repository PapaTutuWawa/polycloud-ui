import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for JwtAuthPluginApi
void main() {
  final instance = Openapi().getJwtAuthPluginApi();

  group(JwtAuthPluginApi, () {
    //Future<TokenRefreshDto> refresh(String authorization) async
    test('test refresh', () async {
      // TODO
    });

  });
}
