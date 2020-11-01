import 'package:freezed_annotation/freezed_annotation.dart';

part 'cache_glitch.freezed.dart';

@freezed
abstract class CacheGlitch with _$CacheGlitch {
  const factory CacheGlitch.noCacheFound({
    @required String message,
  }) = NoCacheFound;

  const factory CacheGlitch.errorCacheGlitch({
    @required String message,
  }) = ErrorCacheGlitch;
}