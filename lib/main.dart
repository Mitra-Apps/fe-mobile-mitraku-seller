import 'package:mitraku_seller/bootstrap.dart';
import 'package:mitraku_seller/configs/app_config.dart';

Future<void> main() async {
  await bootstrap(
    firebaseInitialization: () async {},
    flavorConfiguration: () async {
      AppConfig.configDev();
    },
  );
}
