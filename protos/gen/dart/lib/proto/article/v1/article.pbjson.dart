//
//  Generated code. Do not modify.
//  source: article/v1/article.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use articleDescriptor instead')
const Article$json = {
  '1': 'Article',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'bar_code_value', '3': 4, '4': 1, '5': 9, '10': 'barCodeValue'},
    {'1': 'images', '3': 5, '4': 3, '5': 9, '10': 'images'},
    {'1': 'created_at', '3': 6, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 7, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `Article`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List articleDescriptor = $convert.base64Decode(
    'CgdBcnRpY2xlEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2Rlc2NyaX'
    'B0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIkCg5iYXJfY29kZV92YWx1ZRgEIAEoCVIMYmFyQ29k'
    'ZVZhbHVlEhYKBmltYWdlcxgFIAMoCVIGaW1hZ2VzEh0KCmNyZWF0ZWRfYXQYBiABKAlSCWNyZW'
    'F0ZWRBdBIdCgp1cGRhdGVkX2F0GAcgASgJUgl1cGRhdGVkQXQ=');

@$core.Deprecated('Use getArticleRequestDescriptor instead')
const GetArticleRequest$json = {
  '1': 'GetArticleRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetArticleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getArticleRequestDescriptor = $convert.base64Decode(
    'ChFHZXRBcnRpY2xlUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getArticleResponseDescriptor instead')
const GetArticleResponse$json = {
  '1': 'GetArticleResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'bar_code_value', '3': 4, '4': 1, '5': 9, '10': 'barCodeValue'},
    {'1': 'images', '3': 5, '4': 3, '5': 11, '6': '.media.v1.Media', '10': 'images'},
    {'1': 'created_at', '3': 6, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 7, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `GetArticleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getArticleResponseDescriptor = $convert.base64Decode(
    'ChJHZXRBcnRpY2xlUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbW'
    'USIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEiQKDmJhcl9jb2RlX3ZhbHVlGAQg'
    'ASgJUgxiYXJDb2RlVmFsdWUSJwoGaW1hZ2VzGAUgAygLMg8ubWVkaWEudjEuTWVkaWFSBmltYW'
    'dlcxIdCgpjcmVhdGVkX2F0GAYgASgJUgljcmVhdGVkQXQSHQoKdXBkYXRlZF9hdBgHIAEoCVIJ'
    'dXBkYXRlZEF0');

@$core.Deprecated('Use createArticleRequestDescriptor instead')
const CreateArticleRequest$json = {
  '1': 'CreateArticleRequest',
  '2': [
    {'1': 'article', '3': 1, '4': 1, '5': 11, '6': '.article.v1.Article', '10': 'article'},
  ],
};

/// Descriptor for `CreateArticleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createArticleRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVBcnRpY2xlUmVxdWVzdBItCgdhcnRpY2xlGAEgASgLMhMuYXJ0aWNsZS52MS5Bcn'
    'RpY2xlUgdhcnRpY2xl');

@$core.Deprecated('Use updateArticleRequestDescriptor instead')
const UpdateArticleRequest$json = {
  '1': 'UpdateArticleRequest',
  '2': [
    {'1': 'article', '3': 1, '4': 1, '5': 11, '6': '.article.v1.Article', '10': 'article'},
  ],
};

/// Descriptor for `UpdateArticleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateArticleRequestDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVBcnRpY2xlUmVxdWVzdBItCgdhcnRpY2xlGAEgASgLMhMuYXJ0aWNsZS52MS5Bcn'
    'RpY2xlUgdhcnRpY2xl');

@$core.Deprecated('Use deleteArticleRequestDescriptor instead')
const DeleteArticleRequest$json = {
  '1': 'DeleteArticleRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteArticleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteArticleRequestDescriptor = $convert.base64Decode(
    'ChREZWxldGVBcnRpY2xlUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use deleteArticleResponseDescriptor instead')
const DeleteArticleResponse$json = {
  '1': 'DeleteArticleResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteArticleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteArticleResponseDescriptor = $convert.base64Decode(
    'ChVEZWxldGVBcnRpY2xlUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');

@$core.Deprecated('Use createArticleResponseDescriptor instead')
const CreateArticleResponse$json = {
  '1': 'CreateArticleResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateArticleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createArticleResponseDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVBcnRpY2xlUmVzcG9uc2USDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use updateArticleResponseDescriptor instead')
const UpdateArticleResponse$json = {
  '1': 'UpdateArticleResponse',
  '2': [
    {'1': 'article', '3': 1, '4': 1, '5': 11, '6': '.article.v1.Article', '10': 'article'},
  ],
};

/// Descriptor for `UpdateArticleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateArticleResponseDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVBcnRpY2xlUmVzcG9uc2USLQoHYXJ0aWNsZRgBIAEoCzITLmFydGljbGUudjEuQX'
    'J0aWNsZVIHYXJ0aWNsZQ==');

