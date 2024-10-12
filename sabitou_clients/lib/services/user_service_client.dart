import 'package:get/get.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:sabitou_dart/user/v1/user.pbgrpc.dart';

import '../utils/logger.dart';

/// The user service client.
final class UserClientService extends GetxService {
  final _logger = LoggerApp('UserClientService');

  /// The user service client.
  final UserServiceClient userClientService;

  /// The client channel.
  final GrpcOrGrpcWebClientChannel clientChannel;

  /// Access the singleton instance.
  static UserClientService get to => Get.find();

  /// Constructs a new [UserServiceClient].
  UserClientService({required this.clientChannel})
      : userClientService = UserServiceClient(
          clientChannel,
        );

  /// Creates a new user.
  Future<User?> createUser({required CreateUserRequest request}) async {
    try {
      final user = await userClientService.createUser(
        CreateUserRequest()
          ..firstName = request.firstName
          ..lastName = request.lastName
          ..email = request.email
          ..password = request.password
          ..connectionType = request.connectionType,
      );

      _logger.log(
        'Created user: ${request.writeToJson()}.',
      );

      return user;
    } on Exception catch (e) {
      _logger.severe('Caught error: $e');

      return null;
    } finally {
      await clientChannel.shutdown();
    }
  }
}
