class AppConfig {
  static String baseUrl = '';
  static String newBaseUrl = '';

  static const String defaultLocale = 'en';

  static void configDev() {
    baseUrl = 'http://172.19.14.120:7000';
  }

  static void configStaging() {
    baseUrl = 'http://172.19.14.120:7000';
  }

  static void configProduction() {
    baseUrl = 'http://172.19.14.120:9000';
  }
}
