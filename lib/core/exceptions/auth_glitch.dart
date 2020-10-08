import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_glitch.freezed.dart';

@freezed
abstract class AuthGlitch with _$AuthGlitch {
  const factory AuthGlitch.networkGlitch({
    @required String message,
  }) = AuthNetworkGlitch;
}
