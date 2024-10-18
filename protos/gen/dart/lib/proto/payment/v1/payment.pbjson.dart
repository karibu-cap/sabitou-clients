//
//  Generated code. Do not modify.
//  source: payment/v1/payment.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use paymentDescriptor instead')
const Payment$json = {
  '1': 'Payment',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'method', '3': 2, '4': 1, '5': 9, '10': 'method'},
    {'1': 'amount_paid_in_xaf', '3': 3, '4': 1, '5': 1, '10': 'amountPaidInXaf'},
    {'1': 'created_at', '3': 4, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 5, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `Payment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentDescriptor = $convert.base64Decode(
    'CgdQYXltZW50Eg4KAmlkGAEgASgJUgJpZBIWCgZtZXRob2QYAiABKAlSBm1ldGhvZBIrChJhbW'
    '91bnRfcGFpZF9pbl94YWYYAyABKAFSD2Ftb3VudFBhaWRJblhhZhIdCgpjcmVhdGVkX2F0GAQg'
    'ASgJUgljcmVhdGVkQXQSHQoKdXBkYXRlZF9hdBgFIAEoCVIJdXBkYXRlZEF0');

@$core.Deprecated('Use createPaymentRequestDescriptor instead')
const CreatePaymentRequest$json = {
  '1': 'CreatePaymentRequest',
  '2': [
    {'1': 'method', '3': 1, '4': 1, '5': 9, '10': 'method'},
    {'1': 'amount_paid_in_xaf', '3': 2, '4': 1, '5': 1, '10': 'amountPaidInXaf'},
  ],
};

/// Descriptor for `CreatePaymentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPaymentRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVQYXltZW50UmVxdWVzdBIWCgZtZXRob2QYASABKAlSBm1ldGhvZBIrChJhbW91bn'
    'RfcGFpZF9pbl94YWYYAiABKAFSD2Ftb3VudFBhaWRJblhhZg==');

@$core.Deprecated('Use createPaymentResponseDescriptor instead')
const CreatePaymentResponse$json = {
  '1': 'CreatePaymentResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreatePaymentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPaymentResponseDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVQYXltZW50UmVzcG9uc2USDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use getPaymentRequestDescriptor instead')
const GetPaymentRequest$json = {
  '1': 'GetPaymentRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetPaymentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPaymentRequestDescriptor = $convert.base64Decode(
    'ChFHZXRQYXltZW50UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getPaymentResponseDescriptor instead')
const GetPaymentResponse$json = {
  '1': 'GetPaymentResponse',
  '2': [
    {'1': 'payment', '3': 1, '4': 1, '5': 11, '6': '.payment.v1.Payment', '10': 'payment'},
  ],
};

/// Descriptor for `GetPaymentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPaymentResponseDescriptor = $convert.base64Decode(
    'ChJHZXRQYXltZW50UmVzcG9uc2USLQoHcGF5bWVudBgBIAEoCzITLnBheW1lbnQudjEuUGF5bW'
    'VudFIHcGF5bWVudA==');

