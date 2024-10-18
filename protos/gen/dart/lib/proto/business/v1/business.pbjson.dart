//
//  Generated code. Do not modify.
//  source: business/v1/business.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use businessDescriptor instead')
const Business$json = {
  '1': 'Business',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'created_at', '3': 7, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 8, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `Business`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List businessDescriptor = $convert.base64Decode(
    'CghCdXNpbmVzcxIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgDIAEoCVIEbmFtZRIgCgtkZXNjcm'
    'lwdGlvbhgEIAEoCVILZGVzY3JpcHRpb24SHQoKY3JlYXRlZF9hdBgHIAEoCVIJY3JlYXRlZEF0'
    'Eh0KCnVwZGF0ZWRfYXQYCCABKAlSCXVwZGF0ZWRBdA==');

@$core.Deprecated('Use createBusinessRequestDescriptor instead')
const CreateBusinessRequest$json = {
  '1': 'CreateBusinessRequest',
  '2': [
    {'1': 'business', '3': 1, '4': 1, '5': 11, '6': '.business.v1.Business', '10': 'business'},
  ],
};

/// Descriptor for `CreateBusinessRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createBusinessRequestDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVCdXNpbmVzc1JlcXVlc3QSMQoIYnVzaW5lc3MYASABKAsyFS5idXNpbmVzcy52MS'
    '5CdXNpbmVzc1IIYnVzaW5lc3M=');

@$core.Deprecated('Use createBusinessResponseDescriptor instead')
const CreateBusinessResponse$json = {
  '1': 'CreateBusinessResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateBusinessResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createBusinessResponseDescriptor = $convert.base64Decode(
    'ChZDcmVhdGVCdXNpbmVzc1Jlc3BvbnNlEg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use getBusinessRequestDescriptor instead')
const GetBusinessRequest$json = {
  '1': 'GetBusinessRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetBusinessRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBusinessRequestDescriptor = $convert.base64Decode(
    'ChJHZXRCdXNpbmVzc1JlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use getBusinessResponseDescriptor instead')
const GetBusinessResponse$json = {
  '1': 'GetBusinessResponse',
  '2': [
    {'1': 'business', '3': 1, '4': 1, '5': 11, '6': '.business.v1.Business', '10': 'business'},
  ],
};

/// Descriptor for `GetBusinessResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBusinessResponseDescriptor = $convert.base64Decode(
    'ChNHZXRCdXNpbmVzc1Jlc3BvbnNlEjEKCGJ1c2luZXNzGAEgASgLMhUuYnVzaW5lc3MudjEuQn'
    'VzaW5lc3NSCGJ1c2luZXNz');

@$core.Deprecated('Use updateBusinessRequestDescriptor instead')
const UpdateBusinessRequest$json = {
  '1': 'UpdateBusinessRequest',
  '2': [
    {'1': 'business', '3': 1, '4': 1, '5': 11, '6': '.business.v1.Business', '10': 'business'},
  ],
};

/// Descriptor for `UpdateBusinessRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateBusinessRequestDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVCdXNpbmVzc1JlcXVlc3QSMQoIYnVzaW5lc3MYASABKAsyFS5idXNpbmVzcy52MS'
    '5CdXNpbmVzc1IIYnVzaW5lc3M=');

@$core.Deprecated('Use updateBusinessResponseDescriptor instead')
const UpdateBusinessResponse$json = {
  '1': 'UpdateBusinessResponse',
  '2': [
    {'1': 'business', '3': 1, '4': 1, '5': 11, '6': '.business.v1.Business', '10': 'business'},
  ],
};

/// Descriptor for `UpdateBusinessResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateBusinessResponseDescriptor = $convert.base64Decode(
    'ChZVcGRhdGVCdXNpbmVzc1Jlc3BvbnNlEjEKCGJ1c2luZXNzGAEgASgLMhUuYnVzaW5lc3Mudj'
    'EuQnVzaW5lc3NSCGJ1c2luZXNz');

@$core.Deprecated('Use deleteBusinessRequestDescriptor instead')
const DeleteBusinessRequest$json = {
  '1': 'DeleteBusinessRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteBusinessRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteBusinessRequestDescriptor = $convert.base64Decode(
    'ChVEZWxldGVCdXNpbmVzc1JlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use deleteBusinessResponseDescriptor instead')
const DeleteBusinessResponse$json = {
  '1': 'DeleteBusinessResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteBusinessResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteBusinessResponseDescriptor = $convert.base64Decode(
    'ChZEZWxldGVCdXNpbmVzc1Jlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

