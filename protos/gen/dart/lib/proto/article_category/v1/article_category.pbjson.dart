//
//  Generated code. Do not modify.
//  source: article_category/v1/article_category.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use articleCategoryDescriptor instead')
const ArticleCategory$json = {
  '1': 'ArticleCategory',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `ArticleCategory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List articleCategoryDescriptor = $convert.base64Decode(
    'Cg9BcnRpY2xlQ2F0ZWdvcnkSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIA'
    'oLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9u');

@$core.Deprecated('Use createArticleCategoryRequestDescriptor instead')
const CreateArticleCategoryRequest$json = {
  '1': 'CreateArticleCategoryRequest',
  '2': [
    {'1': 'article_category', '3': 1, '4': 1, '5': 11, '6': '.article_category.v1.ArticleCategory', '10': 'articleCategory'},
  ],
};

/// Descriptor for `CreateArticleCategoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createArticleCategoryRequestDescriptor = $convert.base64Decode(
    'ChxDcmVhdGVBcnRpY2xlQ2F0ZWdvcnlSZXF1ZXN0Ek8KEGFydGljbGVfY2F0ZWdvcnkYASABKA'
    'syJC5hcnRpY2xlX2NhdGVnb3J5LnYxLkFydGljbGVDYXRlZ29yeVIPYXJ0aWNsZUNhdGVnb3J5');

@$core.Deprecated('Use createArticleCategoryResponseDescriptor instead')
const CreateArticleCategoryResponse$json = {
  '1': 'CreateArticleCategoryResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateArticleCategoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createArticleCategoryResponseDescriptor = $convert.base64Decode(
    'Ch1DcmVhdGVBcnRpY2xlQ2F0ZWdvcnlSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getArticleCategoryRequestDescriptor instead')
const GetArticleCategoryRequest$json = {
  '1': 'GetArticleCategoryRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetArticleCategoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getArticleCategoryRequestDescriptor = $convert.base64Decode(
    'ChlHZXRBcnRpY2xlQ2F0ZWdvcnlSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use getArticleCategoryResponseDescriptor instead')
const GetArticleCategoryResponse$json = {
  '1': 'GetArticleCategoryResponse',
  '2': [
    {'1': 'article_category', '3': 1, '4': 1, '5': 11, '6': '.article_category.v1.ArticleCategory', '10': 'articleCategory'},
  ],
};

/// Descriptor for `GetArticleCategoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getArticleCategoryResponseDescriptor = $convert.base64Decode(
    'ChpHZXRBcnRpY2xlQ2F0ZWdvcnlSZXNwb25zZRJPChBhcnRpY2xlX2NhdGVnb3J5GAEgASgLMi'
    'QuYXJ0aWNsZV9jYXRlZ29yeS52MS5BcnRpY2xlQ2F0ZWdvcnlSD2FydGljbGVDYXRlZ29yeQ==');

@$core.Deprecated('Use updateArticleCategoryRequestDescriptor instead')
const UpdateArticleCategoryRequest$json = {
  '1': 'UpdateArticleCategoryRequest',
  '2': [
    {'1': 'article_category', '3': 1, '4': 1, '5': 11, '6': '.article_category.v1.ArticleCategory', '10': 'articleCategory'},
  ],
};

/// Descriptor for `UpdateArticleCategoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateArticleCategoryRequestDescriptor = $convert.base64Decode(
    'ChxVcGRhdGVBcnRpY2xlQ2F0ZWdvcnlSZXF1ZXN0Ek8KEGFydGljbGVfY2F0ZWdvcnkYASABKA'
    'syJC5hcnRpY2xlX2NhdGVnb3J5LnYxLkFydGljbGVDYXRlZ29yeVIPYXJ0aWNsZUNhdGVnb3J5');

@$core.Deprecated('Use updateArticleCategoryResponseDescriptor instead')
const UpdateArticleCategoryResponse$json = {
  '1': 'UpdateArticleCategoryResponse',
  '2': [
    {'1': 'article_category', '3': 1, '4': 1, '5': 11, '6': '.article_category.v1.ArticleCategory', '10': 'articleCategory'},
  ],
};

/// Descriptor for `UpdateArticleCategoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateArticleCategoryResponseDescriptor = $convert.base64Decode(
    'Ch1VcGRhdGVBcnRpY2xlQ2F0ZWdvcnlSZXNwb25zZRJPChBhcnRpY2xlX2NhdGVnb3J5GAEgAS'
    'gLMiQuYXJ0aWNsZV9jYXRlZ29yeS52MS5BcnRpY2xlQ2F0ZWdvcnlSD2FydGljbGVDYXRlZ29y'
    'eQ==');

@$core.Deprecated('Use deleteArticleCategoryRequestDescriptor instead')
const DeleteArticleCategoryRequest$json = {
  '1': 'DeleteArticleCategoryRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteArticleCategoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteArticleCategoryRequestDescriptor = $convert.base64Decode(
    'ChxEZWxldGVBcnRpY2xlQ2F0ZWdvcnlSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use deleteArticleCategoryResponseDescriptor instead')
const DeleteArticleCategoryResponse$json = {
  '1': 'DeleteArticleCategoryResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteArticleCategoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteArticleCategoryResponseDescriptor = $convert.base64Decode(
    'Ch1EZWxldGVBcnRpY2xlQ2F0ZWdvcnlSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZX'
    'Nz');

