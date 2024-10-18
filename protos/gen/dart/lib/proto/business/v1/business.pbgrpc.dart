//
//  Generated code. Do not modify.
//  source: business/v1/business.proto
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

import 'business.pb.dart' as $3;

export 'business.pb.dart';

@$pb.GrpcServiceName('business.v1.BusinessService')
class BusinessServiceClient extends $grpc.Client {
  static final _$createBusiness = $grpc.ClientMethod<$3.CreateBusinessRequest, $3.CreateBusinessResponse>(
      '/business.v1.BusinessService/CreateBusiness',
      ($3.CreateBusinessRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreateBusinessResponse.fromBuffer(value));
  static final _$getBusiness = $grpc.ClientMethod<$3.GetBusinessRequest, $3.GetBusinessResponse>(
      '/business.v1.BusinessService/GetBusiness',
      ($3.GetBusinessRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetBusinessResponse.fromBuffer(value));
  static final _$updateBusiness = $grpc.ClientMethod<$3.UpdateBusinessRequest, $3.UpdateBusinessResponse>(
      '/business.v1.BusinessService/UpdateBusiness',
      ($3.UpdateBusinessRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdateBusinessResponse.fromBuffer(value));
  static final _$deleteBusiness = $grpc.ClientMethod<$3.DeleteBusinessRequest, $3.DeleteBusinessResponse>(
      '/business.v1.BusinessService/DeleteBusiness',
      ($3.DeleteBusinessRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeleteBusinessResponse.fromBuffer(value));

  BusinessServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.CreateBusinessResponse> createBusiness($3.CreateBusinessRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createBusiness, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetBusinessResponse> getBusiness($3.GetBusinessRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBusiness, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdateBusinessResponse> updateBusiness($3.UpdateBusinessRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateBusiness, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeleteBusinessResponse> deleteBusiness($3.DeleteBusinessRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteBusiness, request, options: options);
  }
}

@$pb.GrpcServiceName('business.v1.BusinessService')
abstract class BusinessServiceBase extends $grpc.Service {
  $core.String get $name => 'business.v1.BusinessService';

  BusinessServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.CreateBusinessRequest, $3.CreateBusinessResponse>(
        'CreateBusiness',
        createBusiness_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreateBusinessRequest.fromBuffer(value),
        ($3.CreateBusinessResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetBusinessRequest, $3.GetBusinessResponse>(
        'GetBusiness',
        getBusiness_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetBusinessRequest.fromBuffer(value),
        ($3.GetBusinessResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateBusinessRequest, $3.UpdateBusinessResponse>(
        'UpdateBusiness',
        updateBusiness_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateBusinessRequest.fromBuffer(value),
        ($3.UpdateBusinessResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteBusinessRequest, $3.DeleteBusinessResponse>(
        'DeleteBusiness',
        deleteBusiness_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeleteBusinessRequest.fromBuffer(value),
        ($3.DeleteBusinessResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.CreateBusinessResponse> createBusiness_Pre($grpc.ServiceCall call, $async.Future<$3.CreateBusinessRequest> request) async {
    return createBusiness(call, await request);
  }

  $async.Future<$3.GetBusinessResponse> getBusiness_Pre($grpc.ServiceCall call, $async.Future<$3.GetBusinessRequest> request) async {
    return getBusiness(call, await request);
  }

  $async.Future<$3.UpdateBusinessResponse> updateBusiness_Pre($grpc.ServiceCall call, $async.Future<$3.UpdateBusinessRequest> request) async {
    return updateBusiness(call, await request);
  }

  $async.Future<$3.DeleteBusinessResponse> deleteBusiness_Pre($grpc.ServiceCall call, $async.Future<$3.DeleteBusinessRequest> request) async {
    return deleteBusiness(call, await request);
  }

  $async.Future<$3.CreateBusinessResponse> createBusiness($grpc.ServiceCall call, $3.CreateBusinessRequest request);
  $async.Future<$3.GetBusinessResponse> getBusiness($grpc.ServiceCall call, $3.GetBusinessRequest request);
  $async.Future<$3.UpdateBusinessResponse> updateBusiness($grpc.ServiceCall call, $3.UpdateBusinessRequest request);
  $async.Future<$3.DeleteBusinessResponse> deleteBusiness($grpc.ServiceCall call, $3.DeleteBusinessRequest request);
}
