//
//  Generated code. Do not modify.
//  source: inventory/v1/inventory.proto
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

import 'inventory.pb.dart' as $8;

export 'inventory.pb.dart';

@$pb.GrpcServiceName('inventory.v1.InventoryService')
class InventoryServiceClient extends $grpc.Client {
  static final _$createInventory = $grpc.ClientMethod<$8.CreateInventoryRequest, $8.CreateInventoryResponse>(
      '/inventory.v1.InventoryService/CreateInventory',
      ($8.CreateInventoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.CreateInventoryResponse.fromBuffer(value));
  static final _$getInventory = $grpc.ClientMethod<$8.GetInventoryRequest, $8.GetInventoryResponse>(
      '/inventory.v1.InventoryService/GetInventory',
      ($8.GetInventoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetInventoryResponse.fromBuffer(value));
  static final _$updateInventory = $grpc.ClientMethod<$8.UpdateInventoryRequest, $8.UpdateInventoryResponse>(
      '/inventory.v1.InventoryService/UpdateInventory',
      ($8.UpdateInventoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.UpdateInventoryResponse.fromBuffer(value));
  static final _$deleteInventory = $grpc.ClientMethod<$8.DeleteInventoryRequest, $8.DeleteInventoryResponse>(
      '/inventory.v1.InventoryService/DeleteInventory',
      ($8.DeleteInventoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.DeleteInventoryResponse.fromBuffer(value));

  InventoryServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$8.CreateInventoryResponse> createInventory($8.CreateInventoryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createInventory, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetInventoryResponse> getInventory($8.GetInventoryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInventory, request, options: options);
  }

  $grpc.ResponseFuture<$8.UpdateInventoryResponse> updateInventory($8.UpdateInventoryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateInventory, request, options: options);
  }

  $grpc.ResponseFuture<$8.DeleteInventoryResponse> deleteInventory($8.DeleteInventoryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteInventory, request, options: options);
  }
}

@$pb.GrpcServiceName('inventory.v1.InventoryService')
abstract class InventoryServiceBase extends $grpc.Service {
  $core.String get $name => 'inventory.v1.InventoryService';

  InventoryServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.CreateInventoryRequest, $8.CreateInventoryResponse>(
        'CreateInventory',
        createInventory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CreateInventoryRequest.fromBuffer(value),
        ($8.CreateInventoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetInventoryRequest, $8.GetInventoryResponse>(
        'GetInventory',
        getInventory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetInventoryRequest.fromBuffer(value),
        ($8.GetInventoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UpdateInventoryRequest, $8.UpdateInventoryResponse>(
        'UpdateInventory',
        updateInventory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.UpdateInventoryRequest.fromBuffer(value),
        ($8.UpdateInventoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.DeleteInventoryRequest, $8.DeleteInventoryResponse>(
        'DeleteInventory',
        deleteInventory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.DeleteInventoryRequest.fromBuffer(value),
        ($8.DeleteInventoryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.CreateInventoryResponse> createInventory_Pre($grpc.ServiceCall call, $async.Future<$8.CreateInventoryRequest> request) async {
    return createInventory(call, await request);
  }

  $async.Future<$8.GetInventoryResponse> getInventory_Pre($grpc.ServiceCall call, $async.Future<$8.GetInventoryRequest> request) async {
    return getInventory(call, await request);
  }

  $async.Future<$8.UpdateInventoryResponse> updateInventory_Pre($grpc.ServiceCall call, $async.Future<$8.UpdateInventoryRequest> request) async {
    return updateInventory(call, await request);
  }

  $async.Future<$8.DeleteInventoryResponse> deleteInventory_Pre($grpc.ServiceCall call, $async.Future<$8.DeleteInventoryRequest> request) async {
    return deleteInventory(call, await request);
  }

  $async.Future<$8.CreateInventoryResponse> createInventory($grpc.ServiceCall call, $8.CreateInventoryRequest request);
  $async.Future<$8.GetInventoryResponse> getInventory($grpc.ServiceCall call, $8.GetInventoryRequest request);
  $async.Future<$8.UpdateInventoryResponse> updateInventory($grpc.ServiceCall call, $8.UpdateInventoryRequest request);
  $async.Future<$8.DeleteInventoryResponse> deleteInventory($grpc.ServiceCall call, $8.DeleteInventoryRequest request);
}
