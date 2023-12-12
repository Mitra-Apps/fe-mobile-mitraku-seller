import 'package:mitraku_seller/data/repositories/dog_image_random/local/dog_image_local_repository.dart';
import 'package:mitraku_seller/data/repositories/dog_image_random/remote/dog_image_random_repository.dart';
import 'package:mitraku_seller/services/app_service/app_service.dart';
import 'package:mitraku_seller/services/local_storage_service/local_storage_service.dart';
import 'package:mitraku_seller/services/log_service/log_service.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  DogImageRandomRepository,
  DogImageLocalRepository,
  LogService,
  AppService,
  LocalStorageService,

  // TODO(mitraku_seller): add more dependencies
])
void main() {}
