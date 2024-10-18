//
//  Generated code. Do not modify.
//  source: store/v1/store.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use storeDescriptor instead')
const Store$json = {
  '1': 'Store',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'address', '3': 2, '4': 1, '5': 9, '10': 'address'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
    {'1': 'business_id', '3': 6, '4': 1, '5': 9, '10': 'businessId'},
    {'1': 'created_at', '3': 7, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 8, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `Store`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storeDescriptor = $convert.base64Decode(
    'CgVTdG9yZRIOCgJpZBgBIAEoCVICaWQSGAoHYWRkcmVzcxgCIAEoCVIHYWRkcmVzcxISCgRuYW'
    '1lGAMgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAUgASgJUgtkZXNjcmlwdGlvbhIfCgtidXNp'
    'bmVzc19pZBgGIAEoCVIKYnVzaW5lc3NJZBIdCgpjcmVhdGVkX2F0GAcgASgJUgljcmVhdGVkQX'
    'QSHQoKdXBkYXRlZF9hdBgIIAEoCVIJdXBkYXRlZEF0');

@$core.Deprecated('Use createStoreRequestDescriptor instead')
const CreateStoreRequest$json = {
  '1': 'CreateStoreRequest',
  '2': [
    {'1': 'store', '3': 1, '4': 1, '5': 11, '6': '.store.v1.Store', '10': 'store'},
  ],
};

/// Descriptor for `CreateStoreRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createStoreRequestDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVTdG9yZVJlcXVlc3QSJQoFc3RvcmUYASABKAsyDy5zdG9yZS52MS5TdG9yZVIFc3'
    'RvcmU=');

@$core.Deprecated('Use createStoreResponseDescriptor instead')
const CreateStoreResponse$json = {
  '1': 'CreateStoreResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateStoreResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createStoreResponseDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVTdG9yZVJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use getStoreRequestDescriptor instead')
const GetStoreRequest$json = {
  '1': 'GetStoreRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetStoreRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStoreRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRTdG9yZVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use getStoreResponseDescriptor instead')
const GetStoreResponse$json = {
  '1': 'GetStoreResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'address', '3': 2, '4': 1, '5': 9, '10': 'address'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'business', '3': 5, '4': 1, '5': 11, '6': '.business.v1.Business', '10': 'business'},
    {'1': 'created_at', '3': 7, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 8, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `GetStoreResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStoreResponseDescriptor = $convert.base64Decode(
    'ChBHZXRTdG9yZVJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBIYCgdhZGRyZXNzGAIgASgJUgdhZG'
    'RyZXNzEhIKBG5hbWUYAyABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YBCABKAlSC2Rlc2NyaXB0'
    'aW9uEjEKCGJ1c2luZXNzGAUgASgLMhUuYnVzaW5lc3MudjEuQnVzaW5lc3NSCGJ1c2luZXNzEh'
    '0KCmNyZWF0ZWRfYXQYByABKAlSCWNyZWF0ZWRBdBIdCgp1cGRhdGVkX2F0GAggASgJUgl1cGRh'
    'dGVkQXQ=');

@$core.Deprecated('Use updateStoreRequestDescriptor instead')
const UpdateStoreRequest$json = {
  '1': 'UpdateStoreRequest',
  '2': [
    {'1': 'store', '3': 1, '4': 1, '5': 11, '6': '.store.v1.Store', '10': 'store'},
  ],
};

/// Descriptor for `UpdateStoreRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateStoreRequestDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVTdG9yZVJlcXVlc3QSJQoFc3RvcmUYASABKAsyDy5zdG9yZS52MS5TdG9yZVIFc3'
    'RvcmU=');

@$core.Deprecated('Use updateStoreResponseDescriptor instead')
const UpdateStoreResponse$json = {
  '1': 'UpdateStoreResponse',
  '2': [
    {'1': 'store', '3': 1, '4': 1, '5': 11, '6': '.store.v1.Store', '10': 'store'},
  ],
};

/// Descriptor for `UpdateStoreResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateStoreResponseDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVTdG9yZVJlc3BvbnNlEiUKBXN0b3JlGAEgASgLMg8uc3RvcmUudjEuU3RvcmVSBX'
    'N0b3Jl');

@$core.Deprecated('Use deleteStoreRequestDescriptor instead')
const DeleteStoreRequest$json = {
  '1': 'DeleteStoreRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteStoreRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteStoreRequestDescriptor = $convert.base64Decode(
    'ChJEZWxldGVTdG9yZVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use deleteStoreResponseDescriptor instead')
const DeleteStoreResponse$json = {
  '1': 'DeleteStoreResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteStoreResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteStoreResponseDescriptor = $convert.base64Decode(
    'ChNEZWxldGVTdG9yZVJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

