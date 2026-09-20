import 'dart:math';
import 'dart:convert';

import 'package:cryptography/cryptography.dart';

/// Allowed characters for the verifier.
const _allowedCharacters =
    'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890-._~';

/// Length for the verifier.
const _verifierLength = 60;

/// Use Dart's cryptographically secure random number generator at Random.secure()
/// to generate a random nonce of length [length] using the character set of
///  [A-Z] / [a-z] / [0-9] / "-" / "." / "_" / "~" (RFC 7636).
String _generateNonce(int length) {
  String nonce = '';
  final r = Random.secure();
  for (var i = 0; i < length; i++) {
    nonce += _allowedCharacters[r.nextInt(_allowedCharacters.length)];
  }
  return nonce;
}

/// Generates a random 32 byte verifier and challenge to be used for PKCE.
/// Uses the S256 method.
(String, String) generatePKCEVerifier() {
  final verifier = _generateNonce(_verifierLength);
  final hash = Sha256().toSync().newHashSink();
  hash.add(ascii.encode(verifier));
  hash.close();

  // The split looks weird. But see here: https://www.rfc-editor.org/info/rfc7636/#appendix-A
  final challenge = base64UrlEncode(hash.hashBytes).split("=")[0];
  return (verifier, challenge);
}
