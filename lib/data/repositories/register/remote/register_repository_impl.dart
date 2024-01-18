import 'package:mitraku_seller/data/repositories/register/remote/register_repository.dart';
import 'package:rest_client/rest_client.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  RegisterRepositoryImpl({required RegisterApiClient registerApiClient})
      : _registerApiClient = registerApiClient;

  late final RegisterApiClient _registerApiClient;

  @override
  Future<RegisterResponse> register(RegisterPost registerPost) async {
    final response = await _registerApiClient.register(registerPost.toJson());
    return response;
  }
}
