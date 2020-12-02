import 'package:catcher/catcher.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/utils/config_reader_util.dart';
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
    DialogReportMode(),
    [
      EmailAutoHandler(
        "smtp.gmail.com",
        587,
        ConfigReader.getAppConfig().developerAccount,
        ConfigReader.getAppConfig().developerAccountName,
        ConfigReader.getAppConfig().developerAccountPassword,
        ConfigReader.getAppConfig().bugRecipients,
        emailHeader: "LSI mobile Bug Report",
        emailTitle: "LSI mobile Bug Report",
        sendHtml: true,
      ),
      SentryHandler(SentryClient(dsn: ConfigReader.getAppConfig().sentryDSN)),
    ],
  );
}
