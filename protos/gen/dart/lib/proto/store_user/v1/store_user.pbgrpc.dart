//
//  Generated code. Do not modify.
//  source: store_user/v1/store_user.proto
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

import 'store_user.pb.dart' as $11;

export 'store_user.pb.dart';

@$pb.GrpcServiceName('store_user.v1.StoreUserService')
class StoreUserServiceClient extends $grpc.Client {
  static final _$createStoreUser = $grpc.ClientMethod<$11.CreateStoreUserRequest, $11.CreateStoreUserResponse>(
      '/store_user.v1.StoreUserService/CreateStoreUser',
      ($11.CreateStoreUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CreateStoreUserResponse.fromBuffer(value));
  static final _$getStoreUser = $grpc.ClientMethod<$11.GetStoreUserRequest, $11.GetStoreUserResponse>(
      '/store_user.v1.StoreUserService/GetStoreUser',
      ($11.GetStoreUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetStoreUserResponse.fromBuffer(value));
  static final _$updateStoreUser = $grpc.ClientMethod<$11.UpdateStoreUserRequest, $11.UpdateStoreUserResponse>(
      '/store_user.v1.StoreUserService/UpdateStoreUser',
      ($11.UpdateStoreUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdateStoreUserResponse.fromBuffer(value));
  static final _$deleteStoreUser = $grpc.ClientMethod<$11.DeleteStoreUserRequest, $11.DeleteStoreUserResponse>(
      '/store_user.v1.StoreUserService/DeleteStoreUser',
      ($11.DeleteStoreUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DeleteStoreUserResponse.fromBuffer(value));

  StoreUserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$11.CreateStoreUserResponse> createStoreUser($11.CreateStoreUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStoreUser, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetStoreUserResponse> getStoreUser($11.GetStoreUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStoreUser, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdateStoreUserResponse> updateStoreUser($11.UpdateStoreUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStoreUser, request, options: options);
  }

  $grpc.ResponseFuture<$11.DeleteStoreUserResponse> deleteStoreUser($11.DeleteStoreUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStoreUser, request, options: options);
  }
}

@$pb.GrpcServiceName('store_user.v1.StoreUserService')
abstract class StoreUserServiceBase extends $grpc.Service {
  $core.String get $name => 'store_user.v1.StoreUserService';

  StoreUserServiceBase() {
    $addMethod($grpc.ServiceMethod<$11.CreateStoreUserRequest, $11.CreateStoreUserResponse>(
        'CreateStoreUser',
        createStoreUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CreateStoreUserRequest.fromBuffer(value),
        ($11.CreateStoreUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetStoreUserRequest, $11.GetStoreUserResponse>(
        'GetStoreUser',
        getStoreUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetStoreUserRequest.fromBuffer(value),
        ($11.GetStoreUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateStoreUserRequest, $11.UpdateStoreUserResponse>(
        'UpdateStoreUser',
        updateStoreUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdateStoreUserRequest.fromBuffer(value),
        ($11.UpdateStoreUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DeleteStoreUserRequest, $11.DeleteStoreUserResponse>(
        'DeleteStoreUser',
        deleteStoreUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DeleteStoreUserRequest.fromBuffer(value),
        ($11.DeleteStoreUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$11.CreateStoreUserResponse> createStoreUser_Pre($grpc.ServiceCall call, $async.Future<$11.CreateStoreUserRequest> request) async {
    return createStoreUser(call, await request);
  }

  $async.Future<$11.GetStoreUserResponse> getStoreUser_Pre($grpc.ServiceCall call, $async.Future<$11.GetStoreUserRequest> request) async {
    return getStoreUser(call, await request);
  }

  $async.Future<$11.UpdateStoreUserResponse> updateStoreUser_Pre($grpc.ServiceCall call, $async.Future<$11.UpdateStoreUserRequest> request) async {
    return updateStoreUser(call, await request);
  }

  $async.Future<$11.DeleteStoreUserResponse> deleteStoreUser_Pre($grpc.ServiceCall call, $async.Future<$11.DeleteStoreUserRequest> request) async {
    return deleteStoreUser(call, await request);
  }

  $async.Future<$11.CreateStoreUserResponse> createStoreUser($grpc.ServiceCall call, $11.CreateStoreUserRequest request);
  $async.Future<$11.GetStoreUserResponse> getStoreUser($grpc.ServiceCall call, $11.GetStoreUserRequest request);
  $async.Future<$11.UpdateStoreUserResponse> updateStoreUser($grpc.ServiceCall call, $11.UpdateStoreUserRequest request);
  $async.Future<$11.DeleteStoreUserResponse> deleteStoreUser($grpc.ServiceCall call, $11.DeleteStoreUserRequest request);
}
