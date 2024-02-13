import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:mitraku_seller/features/app/view/app_director.dart';
import 'package:mitraku_seller/features/demo/view/assets_page.dart';
import 'package:mitraku_seller/features/demo/view/images_from_db_page.dart';
import 'package:mitraku_seller/features/dog_image_random/view/dog_image_random_page.dart';
import 'package:mitraku_seller/features/home/home_page.dart';
import 'package:mitraku_seller/features/login/view/login_page.dart';
import 'package:mitraku_seller/features/otp/view/otp_page.dart';
import 'package:mitraku_seller/features/products/create_product/views/create_product_page.dart';
import 'package:mitraku_seller/features/register/view/register_page.dart';
import 'package:mitraku_seller/features/setting/setting_page.dart';
import 'package:mitraku_seller/generated/l10n.dart';
import 'package:mitraku_seller/widgets/error_page.dart';

class AppRouter {
  AppRouter._();

  static const String appDirector = 'appDirector';
  static const String appDirectorPath = '/';

  static const String homeNamed = 'home';
  static const String homePath = '/home';

  static const String settingNamed = 'setting';
  static const String settingPath = '/setting';

  static const String assetsNamed = 'assets';
  static const String assetsPath = '/assets';

  static const String dogImageRandomNamed = 'dogImageRandom';
  static const String dogImageRandomPath = '/dogImageRandom';

  static const String imagesFromDbNamed = 'imagesFromDb';
  static const String imagesFromDbPath = '/imagesFromDb';

  static const String registerNamed = 'register';
  static const String registerPath = '/register';

  static const String loginName = 'login';
  static const String loginPath = '/login';

  static const String otpName = 'otp';
  static const String otpPath = '/otp';

  static const String createProductName = 'createProduct';
  static const String createProductPath = '/createProduct';

  static GoRouter get router => _router;
  static final _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        name: appDirector,
        path: appDirectorPath,
        builder: (context, state) {
          return const AppDirector();
        },
      ),
      GoRoute(
        name: homeNamed,
        path: homePath,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: settingNamed,
        path: settingPath,
        builder: (context, state) => const SettingPage(),
      ),
      GoRoute(
        name: assetsNamed,
        path: assetsPath,
        builder: (context, state) => const AssetsPage(),
      ),
      GoRoute(
        name: dogImageRandomNamed,
        path: dogImageRandomPath,
        builder: (context, state) => const DogImageRandomPage(),
      ),
      GoRoute(
        name: imagesFromDbNamed,
        path: imagesFromDbPath,
        builder: (context, state) {
          if (!kIsWeb) {
            return const ImagesFromDbPage();
          }

          return ErrorPage(
            content: S.current.didnt_supported,
          );
        },
      ),
      GoRoute(
        name: registerNamed,
        path: registerPath,
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        name: loginName,
        path: loginPath,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        name: otpName,
        path: otpPath,
        builder: (context, state) => const OTPPage(),
      ),
      GoRoute(
        name: createProductName,
        path: createProductPath,
        builder: (context, state) => const CreateProductPage(),
      ),
    ],
  );
}
