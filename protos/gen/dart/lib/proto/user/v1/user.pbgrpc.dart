//
//  Generated code. Do not modify.
//  source: user/v1/user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pb.dart' as $5;

export 'user.pb.dart';

@$pb.GrpcServiceName('user.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$createUser = $grpc.ClientMethod<$5.CreateUserRequest, $5.CreateUserResponse>(
      '/user.v1.UserService/CreateUser',
      ($5.CreateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreateUserResponse.fromBuffer(value));
  static final _$getUser = $grpc.ClientMethod<$5.GetUserRequest, $5.GetUserResponse>(
      '/user.v1.UserService/GetUser',
      ($5.GetUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetUserResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$5.UpdateUserRequest, $5.UpdateUserResponse>(
      '/user.v1.UserService/UpdateUser',
      ($5.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateUserResponse.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$5.DeleteUserRequest, $5.DeleteUserResponse>(
      '/user.v1.UserService/DeleteUser',
      ($5.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeleteUserResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.CreateUserResponse> createUser($5.CreateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetUserResponse> getUser($5.GetUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateUserResponse> updateUser($5.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteUserResponse> deleteUser($5.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }
}

@$pb.GrpcServiceName('user.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'user.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.CreateUserRequest, $5.CreateUserResponse>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateUserRequest.fromBuffer(value),
        ($5.CreateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetUserRequest, $5.GetUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetUserRequest.fromBuffer(value),
        ($5.GetUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateUserRequest, $5.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateUserRequest.fromBuffer(value),
        ($5.UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteUserRequest, $5.DeleteUserResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteUserRequest.fromBuffer(value),
        ($5.DeleteUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreateUserResponse> createUser_Pre($grpc.ServiceCall call, $async.Future<$5.CreateUserRequest> request) async {
    return createUser(call, await request);
  }

  $async.Future<$5.GetUserResponse> getUser_Pre($grpc.ServiceCall call, $async.Future<$5.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$5.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$5.DeleteUserResponse> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$5.DeleteUserRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$5.CreateUserResponse> createUser($grpc.ServiceCall call, $5.CreateUserRequest request);
  $async.Future<$5.GetUserResponse> getUser($grpc.ServiceCall call, $5.GetUserRequest request);
  $async.Future<$5.UpdateUserResponse> updateUser($grpc.ServiceCall call, $5.UpdateUserRequest request);
  $async.Future<$5.DeleteUserResponse> deleteUser($grpc.ServiceCall call, $5.DeleteUserRequest request);
}
