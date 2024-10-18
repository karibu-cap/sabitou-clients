//
//  Generated code. Do not modify.
//  source: order/v1/order.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use statusDescriptor instead')
const Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'STATUS_UNSPECIFIED', '2': 0},
    {'1': 'STATUS_PENDING', '2': 5},
    {'1': 'STATUS_PROCESSING', '2': 1},
    {'1': 'STATUS_COMPLETED', '2': 2},
    {'1': 'STATUS_CANCELLED', '2': 3},
  ],
};

/// Descriptor for `Status`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List statusDescriptor = $convert.base64Decode(
    'CgZTdGF0dXMSFgoSU1RBVFVTX1VOU1BFQ0lGSUVEEAASEgoOU1RBVFVTX1BFTkRJTkcQBRIVCh'
    'FTVEFUVVNfUFJPQ0VTU0lORxABEhQKEFNUQVRVU19DT01QTEVURUQQAhIUChBTVEFUVVNfQ0FO'
    'Q0VMTEVEEAM=');

@$core.Deprecated('Use orderItemDescriptor instead')
const OrderItem$json = {
  '1': 'OrderItem',
  '2': [
    {'1': 'article_id', '3': 1, '4': 1, '5': 9, '10': 'articleId'},
    {'1': 'quantity', '3': 2, '4': 1, '5': 1, '10': 'quantity'},
  ],
};

/// Descriptor for `OrderItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List orderItemDescriptor = $convert.base64Decode(
    'CglPcmRlckl0ZW0SHQoKYXJ0aWNsZV9pZBgBIAEoCVIJYXJ0aWNsZUlkEhoKCHF1YW50aXR5GA'
    'IgASgBUghxdWFudGl0eQ==');

@$core.Deprecated('Use orderDescriptor instead')
const Order$json = {
  '1': 'Order',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'store_id', '3': 2, '4': 1, '5': 9, '10': 'storeId'},
    {'1': 'payment_id', '3': 4, '4': 3, '5': 9, '10': 'paymentId'},
    {'1': 'initiator_id', '3': 5, '4': 1, '5': 9, '10': 'initiatorId'},
    {'1': 'status', '3': 9, '4': 1, '5': 9, '10': 'status'},
    {'1': 'order_items', '3': 6, '4': 3, '5': 11, '6': '.order.v1.OrderItem', '10': 'orderItems'},
    {'1': 'created_at', '3': 7, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 8, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `Order`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List orderDescriptor = $convert.base64Decode(
    'CgVPcmRlchIOCgJpZBgBIAEoCVICaWQSGQoIc3RvcmVfaWQYAiABKAlSB3N0b3JlSWQSHQoKcG'
    'F5bWVudF9pZBgEIAMoCVIJcGF5bWVudElkEiEKDGluaXRpYXRvcl9pZBgFIAEoCVILaW5pdGlh'
    'dG9ySWQSFgoGc3RhdHVzGAkgASgJUgZzdGF0dXMSNAoLb3JkZXJfaXRlbXMYBiADKAsyEy5vcm'
    'Rlci52MS5PcmRlckl0ZW1SCm9yZGVySXRlbXMSHQoKY3JlYXRlZF9hdBgHIAEoCVIJY3JlYXRl'
    'ZEF0Eh0KCnVwZGF0ZWRfYXQYCCABKAlSCXVwZGF0ZWRBdA==');

@$core.Deprecated('Use createOrderRequestDescriptor instead')
const CreateOrderRequest$json = {
  '1': 'CreateOrderRequest',
  '2': [
    {'1': 'order', '3': 1, '4': 1, '5': 11, '6': '.order.v1.Order', '10': 'order'},
  ],
};

/// Descriptor for `CreateOrderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createOrderRequestDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVPcmRlclJlcXVlc3QSJQoFb3JkZXIYASABKAsyDy5vcmRlci52MS5PcmRlclIFb3'
    'JkZXI=');

@$core.Deprecated('Use createOrderResponseDescriptor instead')
const CreateOrderResponse$json = {
  '1': 'CreateOrderResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateOrderResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createOrderResponseDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVPcmRlclJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use getOrderRequestDescriptor instead')
const GetOrderRequest$json = {
  '1': 'GetOrderRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetOrderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrderRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRPcmRlclJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use getOrderResponseDescriptor instead')
const GetOrderResponse$json = {
  '1': 'GetOrderResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'store', '3': 2, '4': 1, '5': 11, '6': '.store.v1.Store', '10': 'store'},
    {'1': 'payment', '3': 4, '4': 3, '5': 11, '6': '.payment.v1.Payment', '10': 'payment'},
    {'1': 'initiator', '3': 5, '4': 1, '5': 11, '6': '.user.v1.User', '10': 'initiator'},
    {'1': 'order_items', '3': 6, '4': 3, '5': 11, '6': '.order.v1.OrderItem', '10': 'orderItems'},
    {'1': 'status', '3': 9, '4': 1, '5': 9, '10': 'status'},
    {'1': 'created_at', '3': 7, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 8, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `GetOrderResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrderResponseDescriptor = $convert.base64Decode(
    'ChBHZXRPcmRlclJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBIlCgVzdG9yZRgCIAEoCzIPLnN0b3'
    'JlLnYxLlN0b3JlUgVzdG9yZRItCgdwYXltZW50GAQgAygLMhMucGF5bWVudC52MS5QYXltZW50'
    'UgdwYXltZW50EisKCWluaXRpYXRvchgFIAEoCzINLnVzZXIudjEuVXNlclIJaW5pdGlhdG9yEj'
    'QKC29yZGVyX2l0ZW1zGAYgAygLMhMub3JkZXIudjEuT3JkZXJJdGVtUgpvcmRlckl0ZW1zEhYK'
    'BnN0YXR1cxgJIAEoCVIGc3RhdHVzEh0KCmNyZWF0ZWRfYXQYByABKAlSCWNyZWF0ZWRBdBIdCg'
    'p1cGRhdGVkX2F0GAggASgJUgl1cGRhdGVkQXQ=');

@$core.Deprecated('Use updateOrderRequestDescriptor instead')
const UpdateOrderRequest$json = {
  '1': 'UpdateOrderRequest',
  '2': [
    {'1': 'order', '3': 1, '4': 1, '5': 11, '6': '.order.v1.Order', '10': 'order'},
  ],
};

/// Descriptor for `UpdateOrderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateOrderRequestDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVPcmRlclJlcXVlc3QSJQoFb3JkZXIYASABKAsyDy5vcmRlci52MS5PcmRlclIFb3'
    'JkZXI=');

@$core.Deprecated('Use updateOrderResponseDescriptor instead')
const UpdateOrderResponse$json = {
  '1': 'UpdateOrderResponse',
  '2': [
    {'1': 'order', '3': 1, '4': 1, '5': 11, '6': '.order.v1.Order', '10': 'order'},
  ],
};

/// Descriptor for `UpdateOrderResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateOrderResponseDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVPcmRlclJlc3BvbnNlEiUKBW9yZGVyGAEgASgLMg8ub3JkZXIudjEuT3JkZXJSBW'
    '9yZGVy');

@$core.Deprecated('Use deleteOrderRequestDescriptor instead')
const DeleteOrderRequest$json = {
  '1': 'DeleteOrderRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeleteOrderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteOrderRequestDescriptor = $convert.base64Decode(
    'ChJEZWxldGVPcmRlclJlcXVlc3QSDgoCaWQYASABKAVSAmlk');

@$core.Deprecated('Use deleteOrderResponseDescriptor instead')
const DeleteOrderResponse$json = {
  '1': 'DeleteOrderResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteOrderResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteOrderResponseDescriptor = $convert.base64Decode(
    'ChNEZWxldGVPcmRlclJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

