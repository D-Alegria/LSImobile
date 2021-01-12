import 'package:catcher/catcher.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/utils/file_reader_util.dart';
import 'package:sentry/sentry.dart';

@lazySingleton
class CatcherConfig {
  static final CatcherOptions debugOptions = CatcherOptions(
    SilentReportMode(),
    [
      ConsoleHandler(enableDeviceParameters: false),
    ],
  );

  static final CatcherOptions releaseOptions = CatcherOptions(
    SilentReportMode(),
    [
      EmailAutoHandler(
        "smtp.gmail.com",
        587,
        FileReader.getAppConfig().developerAccount,
        FileReader.getAppConfig().developerAccountName,
        FileReader.getAppConfig().developerAccountPassword,
        FileReader.getAppConfig().bugRecipients,
        emailHeader: "LSI mobile Bug Report",
        emailTitle: "LSI mobile Bug Report",
        sendHtml: true,
      ),
      SentryHandler(SentryClient(dsn: FileReader.getAppConfig().sentryDSN)),
    ],
  );
}
