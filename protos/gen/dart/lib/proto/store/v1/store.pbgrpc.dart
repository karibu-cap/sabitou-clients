//
//  Generated code. Do not modify.
//  source: store/v1/store.proto
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

import 'store.pb.dart' as $7;

export 'store.pb.dart';

@$pb.GrpcServiceName('store.v1.StoreService')
class StoreServiceClient extends $grpc.Client {
  static final _$createStore = $grpc.ClientMethod<$7.CreateStoreRequest, $7.CreateStoreResponse>(
      '/store.v1.StoreService/CreateStore',
      ($7.CreateStoreRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.CreateStoreResponse.fromBuffer(value));
  static final _$getStore = $grpc.ClientMethod<$7.GetStoreRequest, $7.GetStoreResponse>(
      '/store.v1.StoreService/GetStore',
      ($7.GetStoreRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetStoreResponse.fromBuffer(value));
  static final _$updateStore = $grpc.ClientMethod<$7.UpdateStoreRequest, $7.UpdateStoreResponse>(
      '/store.v1.StoreService/UpdateStore',
      ($7.UpdateStoreRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdateStoreResponse.fromBuffer(value));
  static final _$deleteStore = $grpc.ClientMethod<$7.DeleteStoreRequest, $7.DeleteStoreResponse>(
      '/store.v1.StoreService/DeleteStore',
      ($7.DeleteStoreRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DeleteStoreResponse.fromBuffer(value));

  StoreServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$7.CreateStoreResponse> createStore($7.CreateStoreRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createStore, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetStoreResponse> getStore($7.GetStoreRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStore, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateStoreResponse> updateStore($7.UpdateStoreRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateStore, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeleteStoreResponse> deleteStore($7.DeleteStoreRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteStore, request, options: options);
  }
}

@$pb.GrpcServiceName('store.v1.StoreService')
abstract class StoreServiceBase extends $grpc.Service {
  $core.String get $name => 'store.v1.StoreService';

  StoreServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.CreateStoreRequest, $7.CreateStoreResponse>(
        'CreateStore',
        createStore_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CreateStoreRequest.fromBuffer(value),
        ($7.CreateStoreResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetStoreRequest, $7.GetStoreResponse>(
        'GetStore',
        getStore_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetStoreRequest.fromBuffer(value),
        ($7.GetStoreResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateStoreRequest, $7.UpdateStoreResponse>(
        'UpdateStore',
        updateStore_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateStoreRequest.fromBuffer(value),
        ($7.UpdateStoreResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteStoreRequest, $7.DeleteStoreResponse>(
        'DeleteStore',
        deleteStore_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DeleteStoreRequest.fromBuffer(value),
        ($7.DeleteStoreResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.CreateStoreResponse> createStore_Pre($grpc.ServiceCall call, $async.Future<$7.CreateStoreRequest> request) async {
    return createStore(call, await request);
  }

  $async.Future<$7.GetStoreResponse> getStore_Pre($grpc.ServiceCall call, $async.Future<$7.GetStoreRequest> request) async {
    return getStore(call, await request);
  }

  $async.Future<$7.UpdateStoreResponse> updateStore_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateStoreRequest> request) async {
    return updateStore(call, await request);
  }

  $async.Future<$7.DeleteStoreResponse> deleteStore_Pre($grpc.ServiceCall call, $async.Future<$7.DeleteStoreRequest> request) async {
    return deleteStore(call, await request);
  }

  $async.Future<$7.CreateStoreResponse> createStore($grpc.ServiceCall call, $7.CreateStoreRequest request);
  $async.Future<$7.GetStoreResponse> getStore($grpc.ServiceCall call, $7.GetStoreRequest request);
  $async.Future<$7.UpdateStoreResponse> updateStore($grpc.ServiceCall call, $7.UpdateStoreRequest request);
  $async.Future<$7.DeleteStoreResponse> deleteStore($grpc.ServiceCall call, $7.DeleteStoreRequest request);
}
