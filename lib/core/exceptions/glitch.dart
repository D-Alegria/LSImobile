import 'package:freezed_annotation/freezed_annotation.dart';

part 'glitch.freezed.dart';

@freezed
abstract class Glitch with _$Glitch {
  const factory Glitch.networkGlitch({
    @required String message,
  }) = NetworkGlitch;

  const factory Glitch.serverGlitch({
    @required String message,
  }) = ServerGlitch;

  const factory Glitch.systemGlitch({
    @required String message,
  }) = SystemGlitch;

  const factory Glitch.unAuthenticatedGlitch({
    @required String message,
  }) = UnAuthenticatedGlitch;

  const factory Glitch.localCacheGlitch({
    @required String message,
  }) = LocalCacheGlitch;
}
