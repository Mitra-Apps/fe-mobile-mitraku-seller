import 'package:mitraku_seller/configs/app_config.dart';
import 'package:mitraku_seller/core/keys/app_keys.dart';
import 'package:mitraku_seller/services/app_service/app_service.dart';
import 'package:mitraku_seller/services/local_storage_service/local_storage_service.dart';

class AppServiceImpl implements AppService {
  AppServiceImpl({
    required LocalStorageService localStorageService,
  }) : _localStorageService = localStorageService;
  late final LocalStorageService _localStorageService;

  @override
  bool get isDarkMode =>
      _localStorageService.getBool(key: AppKeys.darkModeKey) ?? false;

  @override
  bool get isFirstUse {
    final token = _localStorageService.getString(
      key: AppKeys.accessTokenKey,
    );
    if(token != null && token.isNotEmpty){
      return false;
    }else{
      return true;
    }
  }

  @override
  String get locale =>
      _localStorageService.getString(key: AppKeys.localeKey) ??
      AppConfig.defaultLocale;

  @override
  Future<void> setIsDarkMode({required bool darkMode}) async {
    return _localStorageService.setValue(
      key: AppKeys.darkModeKey,
      value: darkMode,
    );
  }

  @override
  Future<void> setIsFirstUse({required bool isFirstUse}) async {
    return _localStorageService.clearAll();
  }

  @override
  Future<void> setLocale({required String locale}) async {
    return _localStorageService.setValue(
      key: AppKeys.localeKey,
      value: locale,
    );
  }
}
