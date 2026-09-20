import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for CoreApiControllerApi
void main() {
  final instance = Openapi().getCoreApiControllerApi();

  group(CoreApiControllerApi, () {
    //Future<EnabledAppsDto> apps() async
    test('test apps', () async {
      // TODO
    });

    //Future<AuthMechanismsDto> authMechanisms() async
    test('test authMechanisms', () async {
      // TODO
    });

    //Future<HealthDto> health() async
    test('test health', () async {
      // TODO
    });

  });
}
