//
//  Generated code. Do not modify.
//  source: business_article/v1/business_article.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use businessArticleDescriptor instead')
const BusinessArticle$json = {
  '1': 'BusinessArticle',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'business_id', '3': 7, '4': 1, '5': 9, '10': 'businessId'},
    {'1': 'article_id', '3': 2, '4': 1, '5': 9, '10': 'articleId'},
    {'1': 'price', '3': 3, '4': 1, '5': 1, '10': 'price'},
    {'1': 'created_at', '3': 4, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 5, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `BusinessArticle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List businessArticleDescriptor = $convert.base64Decode(
    'Cg9CdXNpbmVzc0FydGljbGUSDgoCaWQYASABKAlSAmlkEh8KC2J1c2luZXNzX2lkGAcgASgJUg'
    'pidXNpbmVzc0lkEh0KCmFydGljbGVfaWQYAiABKAlSCWFydGljbGVJZBIUCgVwcmljZRgDIAEo'
    'AVIFcHJpY2USHQoKY3JlYXRlZF9hdBgEIAEoCVIJY3JlYXRlZEF0Eh0KCnVwZGF0ZWRfYXQYBS'
    'ABKAlSCXVwZGF0ZWRBdA==');

@$core.Deprecated('Use createBusinessArticleRequestDescriptor instead')
const CreateBusinessArticleRequest$json = {
  '1': 'CreateBusinessArticleRequest',
  '2': [
    {'1': 'business_article', '3': 1, '4': 1, '5': 11, '6': '.business_article.v1.BusinessArticle', '10': 'businessArticle'},
  ],
};

/// Descriptor for `CreateBusinessArticleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createBusinessArticleRequestDescriptor = $convert.base64Decode(
    'ChxDcmVhdGVCdXNpbmVzc0FydGljbGVSZXF1ZXN0Ek8KEGJ1c2luZXNzX2FydGljbGUYASABKA'
    'syJC5idXNpbmVzc19hcnRpY2xlLnYxLkJ1c2luZXNzQXJ0aWNsZVIPYnVzaW5lc3NBcnRpY2xl');

@$core.Deprecated('Use createBusinessArticleResponseDescriptor instead')
const CreateBusinessArticleResponse$json = {
  '1': 'CreateBusinessArticleResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateBusinessArticleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createBusinessArticleResponseDescriptor = $convert.base64Decode(
    'Ch1DcmVhdGVCdXNpbmVzc0FydGljbGVSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getBusinessArticleRequestDescriptor instead')
const GetBusinessArticleRequest$json = {
  '1': 'GetBusinessArticleRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetBusinessArticleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBusinessArticleRequestDescriptor = $convert.base64Decode(
    'ChlHZXRCdXNpbmVzc0FydGljbGVSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use getBusinessArticleResponseDescriptor instead')
const GetBusinessArticleResponse$json = {
  '1': 'GetBusinessArticleResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'article', '3': 2, '4': 1, '5': 11, '6': '.article.v1.Article', '10': 'article'},
    {'1': 'business', '3': 7, '4': 1, '5': 11, '6': '.business.v1.Business', '10': 'business'},
    {'1': 'price', '3': 3, '4': 1, '5': 1, '10': 'price'},
    {'1': 'created_at', '3': 4, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 5, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `GetBusinessArticleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBusinessArticleResponseDescriptor = $convert.base64Decode(
    'ChpHZXRCdXNpbmVzc0FydGljbGVSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSLQoHYXJ0aWNsZR'
    'gCIAEoCzITLmFydGljbGUudjEuQXJ0aWNsZVIHYXJ0aWNsZRIxCghidXNpbmVzcxgHIAEoCzIV'
    'LmJ1c2luZXNzLnYxLkJ1c2luZXNzUghidXNpbmVzcxIUCgVwcmljZRgDIAEoAVIFcHJpY2USHQ'
    'oKY3JlYXRlZF9hdBgEIAEoCVIJY3JlYXRlZEF0Eh0KCnVwZGF0ZWRfYXQYBSABKAlSCXVwZGF0'
    'ZWRBdA==');

@$core.Deprecated('Use updateBusinessArticleRequestDescriptor instead')
const UpdateBusinessArticleRequest$json = {
  '1': 'UpdateBusinessArticleRequest',
  '2': [
    {'1': 'business_article', '3': 1, '4': 1, '5': 11, '6': '.business_article.v1.BusinessArticle', '10': 'businessArticle'},
  ],
};

/// Descriptor for `UpdateBusinessArticleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateBusinessArticleRequestDescriptor = $convert.base64Decode(
    'ChxVcGRhdGVCdXNpbmVzc0FydGljbGVSZXF1ZXN0Ek8KEGJ1c2luZXNzX2FydGljbGUYASABKA'
    'syJC5idXNpbmVzc19hcnRpY2xlLnYxLkJ1c2luZXNzQXJ0aWNsZVIPYnVzaW5lc3NBcnRpY2xl');

@$core.Deprecated('Use updateBusinessArticleResponseDescriptor instead')
const UpdateBusinessArticleResponse$json = {
  '1': 'UpdateBusinessArticleResponse',
  '2': [
    {'1': 'business_article', '3': 1, '4': 1, '5': 11, '6': '.business_article.v1.BusinessArticle', '10': 'businessArticle'},
  ],
};

/// Descriptor for `UpdateBusinessArticleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateBusinessArticleResponseDescriptor = $convert.base64Decode(
    'Ch1VcGRhdGVCdXNpbmVzc0FydGljbGVSZXNwb25zZRJPChBidXNpbmVzc19hcnRpY2xlGAEgAS'
    'gLMiQuYnVzaW5lc3NfYXJ0aWNsZS52MS5CdXNpbmVzc0FydGljbGVSD2J1c2luZXNzQXJ0aWNs'
    'ZQ==');

@$core.Deprecated('Use deleteBusinessArticleRequestDescriptor instead')
const DeleteBusinessArticleRequest$json = {
  '1': 'DeleteBusinessArticleRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteBusinessArticleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteBusinessArticleRequestDescriptor = $convert.base64Decode(
    'ChxEZWxldGVCdXNpbmVzc0FydGljbGVSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use deleteBusinessArticleResponseDescriptor instead')
const DeleteBusinessArticleResponse$json = {
  '1': 'DeleteBusinessArticleResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteBusinessArticleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteBusinessArticleResponseDescriptor = $convert.base64Decode(
    'Ch1EZWxldGVCdXNpbmVzc0FydGljbGVSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZX'
    'Nz');

