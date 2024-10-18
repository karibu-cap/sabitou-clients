//
//  Generated code. Do not modify.
//  source: business_user/v1/business_user.proto
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

import 'business_user.pb.dart' as $6;

export 'business_user.pb.dart';

@$pb.GrpcServiceName('business_user.v1.BusinessUserService')
class BusinessUserServiceClient extends $grpc.Client {
  static final _$createBusinessUser = $grpc.ClientMethod<$6.CreateBusinessUserRequest, $6.CreateBusinessUserResponse>(
      '/business_user.v1.BusinessUserService/CreateBusinessUser',
      ($6.CreateBusinessUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.CreateBusinessUserResponse.fromBuffer(value));
  static final _$getBusinessUser = $grpc.ClientMethod<$6.GetBusinessUserRequest, $6.GetBusinessUserResponse>(
      '/business_user.v1.BusinessUserService/GetBusinessUser',
      ($6.GetBusinessUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetBusinessUserResponse.fromBuffer(value));
  static final _$updateBusinessUser = $grpc.ClientMethod<$6.UpdateBusinessUserRequest, $6.UpdateBusinessUserResponse>(
      '/business_user.v1.BusinessUserService/UpdateBusinessUser',
      ($6.UpdateBusinessUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateBusinessUserResponse.fromBuffer(value));
  static final _$deleteBusinessUser = $grpc.ClientMethod<$6.DeleteBusinessUserRequest, $6.DeleteBusinessUserResponse>(
      '/business_user.v1.BusinessUserService/DeleteBusinessUser',
      ($6.DeleteBusinessUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeleteBusinessUserResponse.fromBuffer(value));

  BusinessUserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.CreateBusinessUserResponse> createBusinessUser($6.CreateBusinessUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createBusinessUser, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetBusinessUserResponse> getBusinessUser($6.GetBusinessUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBusinessUser, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateBusinessUserResponse> updateBusinessUser($6.UpdateBusinessUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateBusinessUser, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteBusinessUserResponse> deleteBusinessUser($6.DeleteBusinessUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteBusinessUser, request, options: options);
  }
}

@$pb.GrpcServiceName('business_user.v1.BusinessUserService')
abstract class BusinessUserServiceBase extends $grpc.Service {
  $core.String get $name => 'business_user.v1.BusinessUserService';

  BusinessUserServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.CreateBusinessUserRequest, $6.CreateBusinessUserResponse>(
        'CreateBusinessUser',
        createBusinessUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateBusinessUserRequest.fromBuffer(value),
        ($6.CreateBusinessUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetBusinessUserRequest, $6.GetBusinessUserResponse>(
        'GetBusinessUser',
        getBusinessUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetBusinessUserRequest.fromBuffer(value),
        ($6.GetBusinessUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateBusinessUserRequest, $6.UpdateBusinessUserResponse>(
        'UpdateBusinessUser',
        updateBusinessUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateBusinessUserRequest.fromBuffer(value),
        ($6.UpdateBusinessUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteBusinessUserRequest, $6.DeleteBusinessUserResponse>(
        'DeleteBusinessUser',
        deleteBusinessUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteBusinessUserRequest.fromBuffer(value),
        ($6.DeleteBusinessUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.CreateBusinessUserResponse> createBusinessUser_Pre($grpc.ServiceCall call, $async.Future<$6.CreateBusinessUserRequest> request) async {
    return createBusinessUser(call, await request);
  }

  $async.Future<$6.GetBusinessUserResponse> getBusinessUser_Pre($grpc.ServiceCall call, $async.Future<$6.GetBusinessUserRequest> request) async {
    return getBusinessUser(call, await request);
  }

  $async.Future<$6.UpdateBusinessUserResponse> updateBusinessUser_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateBusinessUserRequest> request) async {
    return updateBusinessUser(call, await request);
  }

  $async.Future<$6.DeleteBusinessUserResponse> deleteBusinessUser_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteBusinessUserRequest> request) async {
    return deleteBusinessUser(call, await request);
  }

  $async.Future<$6.CreateBusinessUserResponse> createBusinessUser($grpc.ServiceCall call, $6.CreateBusinessUserRequest request);
  $async.Future<$6.GetBusinessUserResponse> getBusinessUser($grpc.ServiceCall call, $6.GetBusinessUserRequest request);
  $async.Future<$6.UpdateBusinessUserResponse> updateBusinessUser($grpc.ServiceCall call, $6.UpdateBusinessUserRequest request);
  $async.Future<$6.DeleteBusinessUserResponse> deleteBusinessUser($grpc.ServiceCall call, $6.DeleteBusinessUserRequest request);
}
