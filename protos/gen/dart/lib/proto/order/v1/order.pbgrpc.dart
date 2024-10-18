//
//  Generated code. Do not modify.
//  source: order/v1/order.proto
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

import 'order.pb.dart' as $10;

export 'order.pb.dart';

@$pb.GrpcServiceName('order.v1.OrderService')
class OrderServiceClient extends $grpc.Client {
  static final _$createOrder = $grpc.ClientMethod<$10.CreateOrderRequest, $10.CreateOrderResponse>(
      '/order.v1.OrderService/CreateOrder',
      ($10.CreateOrderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.CreateOrderResponse.fromBuffer(value));
  static final _$getOrder = $grpc.ClientMethod<$10.GetOrderRequest, $10.GetOrderResponse>(
      '/order.v1.OrderService/GetOrder',
      ($10.GetOrderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetOrderResponse.fromBuffer(value));
  static final _$updateOrder = $grpc.ClientMethod<$10.UpdateOrderRequest, $10.UpdateOrderResponse>(
      '/order.v1.OrderService/UpdateOrder',
      ($10.UpdateOrderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.UpdateOrderResponse.fromBuffer(value));
  static final _$deleteOrder = $grpc.ClientMethod<$10.DeleteOrderRequest, $10.DeleteOrderResponse>(
      '/order.v1.OrderService/DeleteOrder',
      ($10.DeleteOrderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.DeleteOrderResponse.fromBuffer(value));

  OrderServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$10.CreateOrderResponse> createOrder($10.CreateOrderRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrder, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetOrderResponse> getOrder($10.GetOrderRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrder, request, options: options);
  }

  $grpc.ResponseFuture<$10.UpdateOrderResponse> updateOrder($10.UpdateOrderRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateOrder, request, options: options);
  }

  $grpc.ResponseFuture<$10.DeleteOrderResponse> deleteOrder($10.DeleteOrderRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteOrder, request, options: options);
  }
}

@$pb.GrpcServiceName('order.v1.OrderService')
abstract class OrderServiceBase extends $grpc.Service {
  $core.String get $name => 'order.v1.OrderService';

  OrderServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.CreateOrderRequest, $10.CreateOrderResponse>(
        'CreateOrder',
        createOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.CreateOrderRequest.fromBuffer(value),
        ($10.CreateOrderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetOrderRequest, $10.GetOrderResponse>(
        'GetOrder',
        getOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetOrderRequest.fromBuffer(value),
        ($10.GetOrderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.UpdateOrderRequest, $10.UpdateOrderResponse>(
        'UpdateOrder',
        updateOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.UpdateOrderRequest.fromBuffer(value),
        ($10.UpdateOrderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.DeleteOrderRequest, $10.DeleteOrderResponse>(
        'DeleteOrder',
        deleteOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.DeleteOrderRequest.fromBuffer(value),
        ($10.DeleteOrderResponse value) => value.writeToBuffer()));
  }

  $async.Future<$10.CreateOrderResponse> createOrder_Pre($grpc.ServiceCall call, $async.Future<$10.CreateOrderRequest> request) async {
    return createOrder(call, await request);
  }

  $async.Future<$10.GetOrderResponse> getOrder_Pre($grpc.ServiceCall call, $async.Future<$10.GetOrderRequest> request) async {
    return getOrder(call, await request);
  }

  $async.Future<$10.UpdateOrderResponse> updateOrder_Pre($grpc.ServiceCall call, $async.Future<$10.UpdateOrderRequest> request) async {
    return updateOrder(call, await request);
  }

  $async.Future<$10.DeleteOrderResponse> deleteOrder_Pre($grpc.ServiceCall call, $async.Future<$10.DeleteOrderRequest> request) async {
    return deleteOrder(call, await request);
  }

  $async.Future<$10.CreateOrderResponse> createOrder($grpc.ServiceCall call, $10.CreateOrderRequest request);
  $async.Future<$10.GetOrderResponse> getOrder($grpc.ServiceCall call, $10.GetOrderRequest request);
  $async.Future<$10.UpdateOrderResponse> updateOrder($grpc.ServiceCall call, $10.UpdateOrderRequest request);
  $async.Future<$10.DeleteOrderResponse> deleteOrder($grpc.ServiceCall call, $10.DeleteOrderRequest request);
}
