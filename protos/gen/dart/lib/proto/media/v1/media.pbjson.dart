//
//  Generated code. Do not modify.
//  source: media/v1/media.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use mediaTypeDescriptor instead')
const MediaType$json = {
  '1': 'MediaType',
  '2': [
    {'1': 'MEDIA_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'MEDIA_TYPE_IMAGE', '2': 1},
    {'1': 'MEDIA_TYPE_VIDEO', '2': 2},
  ],
};

/// Descriptor for `MediaType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List mediaTypeDescriptor = $convert.base64Decode(
    'CglNZWRpYVR5cGUSGgoWTUVESUFfVFlQRV9VTlNQRUNJRklFRBAAEhQKEE1FRElBX1RZUEVfSU'
    '1BR0UQARIUChBNRURJQV9UWVBFX1ZJREVPEAI=');

@$core.Deprecated('Use mediaDescriptor instead')
const Media$json = {
  '1': 'Media',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    {'1': 'link', '3': 3, '4': 1, '5': 9, '10': 'link'},
    {'1': 'created_at', '3': 4, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 5, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `Media`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mediaDescriptor = $convert.base64Decode(
    'CgVNZWRpYRIOCgJpZBgBIAEoCVICaWQSEgoEdHlwZRgCIAEoCVIEdHlwZRISCgRsaW5rGAMgAS'
    'gJUgRsaW5rEh0KCmNyZWF0ZWRfYXQYBCABKAlSCWNyZWF0ZWRBdBIdCgp1cGRhdGVkX2F0GAUg'
    'ASgJUgl1cGRhdGVkQXQ=');

@$core.Deprecated('Use createMediaRequestDescriptor instead')
const CreateMediaRequest$json = {
  '1': 'CreateMediaRequest',
  '2': [
    {'1': 'media', '3': 1, '4': 1, '5': 11, '6': '.media.v1.Media', '10': 'media'},
  ],
};

/// Descriptor for `CreateMediaRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createMediaRequestDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVNZWRpYVJlcXVlc3QSJQoFbWVkaWEYASABKAsyDy5tZWRpYS52MS5NZWRpYVIFbW'
    'VkaWE=');

@$core.Deprecated('Use createMediaResponseDescriptor instead')
const CreateMediaResponse$json = {
  '1': 'CreateMediaResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateMediaResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createMediaResponseDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVNZWRpYVJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use getMediaRequestDescriptor instead')
const GetMediaRequest$json = {
  '1': 'GetMediaRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetMediaRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMediaRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRNZWRpYVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use getMediaResponseDescriptor instead')
const GetMediaResponse$json = {
  '1': 'GetMediaResponse',
  '2': [
    {'1': 'media', '3': 1, '4': 1, '5': 11, '6': '.media.v1.Media', '10': 'media'},
  ],
};

/// Descriptor for `GetMediaResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMediaResponseDescriptor = $convert.base64Decode(
    'ChBHZXRNZWRpYVJlc3BvbnNlEiUKBW1lZGlhGAEgASgLMg8ubWVkaWEudjEuTWVkaWFSBW1lZG'
    'lh');

@$core.Deprecated('Use updateMediaRequestDescriptor instead')
const UpdateMediaRequest$json = {
  '1': 'UpdateMediaRequest',
  '2': [
    {'1': 'media', '3': 1, '4': 1, '5': 11, '6': '.media.v1.Media', '10': 'media'},
  ],
};

/// Descriptor for `UpdateMediaRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateMediaRequestDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVNZWRpYVJlcXVlc3QSJQoFbWVkaWEYASABKAsyDy5tZWRpYS52MS5NZWRpYVIFbW'
    'VkaWE=');

@$core.Deprecated('Use updateMediaResponseDescriptor instead')
const UpdateMediaResponse$json = {
  '1': 'UpdateMediaResponse',
  '2': [
    {'1': 'media', '3': 1, '4': 1, '5': 11, '6': '.media.v1.Media', '10': 'media'},
  ],
};

/// Descriptor for `UpdateMediaResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateMediaResponseDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVNZWRpYVJlc3BvbnNlEiUKBW1lZGlhGAEgASgLMg8ubWVkaWEudjEuTWVkaWFSBW'
    '1lZGlh');

@$core.Deprecated('Use deleteMediaRequestDescriptor instead')
const DeleteMediaRequest$json = {
  '1': 'DeleteMediaRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteMediaRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteMediaRequestDescriptor = $convert.base64Decode(
    'ChJEZWxldGVNZWRpYVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use deleteMediaResponseDescriptor instead')
const DeleteMediaResponse$json = {
  '1': 'DeleteMediaResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteMediaResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteMediaResponseDescriptor = $convert.base64Decode(
    'ChNEZWxldGVNZWRpYVJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

