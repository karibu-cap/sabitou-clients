//
//  Generated code. Do not modify.
//  source: payment/v1/payment.proto
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

import 'payment.pb.dart' as $9;

export 'payment.pb.dart';

@$pb.GrpcServiceName('payment.v1.PaymentService')
class PaymentServiceClient extends $grpc.Client {
  static final _$getPayment = $grpc.ClientMethod<$9.GetPaymentRequest, $9.GetPaymentResponse>(
      '/payment.v1.PaymentService/GetPayment',
      ($9.GetPaymentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetPaymentResponse.fromBuffer(value));
  static final _$createPayment = $grpc.ClientMethod<$9.CreatePaymentRequest, $9.CreatePaymentResponse>(
      '/payment.v1.PaymentService/CreatePayment',
      ($9.CreatePaymentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreatePaymentResponse.fromBuffer(value));

  PaymentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$9.GetPaymentResponse> getPayment($9.GetPaymentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPayment, request, options: options);
  }

  $grpc.ResponseFuture<$9.CreatePaymentResponse> createPayment($9.CreatePaymentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPayment, request, options: options);
  }
}

@$pb.GrpcServiceName('payment.v1.PaymentService')
abstract class PaymentServiceBase extends $grpc.Service {
  $core.String get $name => 'payment.v1.PaymentService';

  PaymentServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.GetPaymentRequest, $9.GetPaymentResponse>(
        'GetPayment',
        getPayment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetPaymentRequest.fromBuffer(value),
        ($9.GetPaymentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.CreatePaymentRequest, $9.CreatePaymentResponse>(
        'CreatePayment',
        createPayment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreatePaymentRequest.fromBuffer(value),
        ($9.CreatePaymentResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.GetPaymentResponse> getPayment_Pre($grpc.ServiceCall call, $async.Future<$9.GetPaymentRequest> request) async {
    return getPayment(call, await request);
  }

  $async.Future<$9.CreatePaymentResponse> createPayment_Pre($grpc.ServiceCall call, $async.Future<$9.CreatePaymentRequest> request) async {
    return createPayment(call, await request);
  }

  $async.Future<$9.GetPaymentResponse> getPayment($grpc.ServiceCall call, $9.GetPaymentRequest request);
  $async.Future<$9.CreatePaymentResponse> createPayment($grpc.ServiceCall call, $9.CreatePaymentRequest request);
}
