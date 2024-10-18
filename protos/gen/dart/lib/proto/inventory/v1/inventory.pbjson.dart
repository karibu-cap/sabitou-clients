//
//  Generated code. Do not modify.
//  source: inventory/v1/inventory.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use inventoryDescriptor instead')
const Inventory$json = {
  '1': 'Inventory',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'article_id', '3': 2, '4': 1, '5': 9, '10': 'articleId'},
    {'1': 'quantity', '3': 3, '4': 1, '5': 1, '10': 'quantity'},
    {'1': 'categories', '3': 4, '4': 3, '5': 9, '10': 'categories'},
    {'1': 'price', '3': 5, '4': 1, '5': 1, '10': 'price'},
    {'1': 'images', '3': 6, '4': 3, '5': 9, '10': 'images'},
    {'1': 'created_at', '3': 7, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 8, '4': 1, '5': 9, '10': 'updatedAt'},
    {'1': 'store_id', '3': 9, '4': 1, '5': 9, '10': 'storeId'},
  ],
};

/// Descriptor for `Inventory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inventoryDescriptor = $convert.base64Decode(
    'CglJbnZlbnRvcnkSDgoCaWQYASABKAlSAmlkEh0KCmFydGljbGVfaWQYAiABKAlSCWFydGljbG'
    'VJZBIaCghxdWFudGl0eRgDIAEoAVIIcXVhbnRpdHkSHgoKY2F0ZWdvcmllcxgEIAMoCVIKY2F0'
    'ZWdvcmllcxIUCgVwcmljZRgFIAEoAVIFcHJpY2USFgoGaW1hZ2VzGAYgAygJUgZpbWFnZXMSHQ'
    'oKY3JlYXRlZF9hdBgHIAEoCVIJY3JlYXRlZEF0Eh0KCnVwZGF0ZWRfYXQYCCABKAlSCXVwZGF0'
    'ZWRBdBIZCghzdG9yZV9pZBgJIAEoCVIHc3RvcmVJZA==');

@$core.Deprecated('Use createInventoryRequestDescriptor instead')
const CreateInventoryRequest$json = {
  '1': 'CreateInventoryRequest',
  '2': [
    {'1': 'inventory', '3': 1, '4': 1, '5': 11, '6': '.inventory.v1.Inventory', '10': 'inventory'},
  ],
};

/// Descriptor for `CreateInventoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createInventoryRequestDescriptor = $convert.base64Decode(
    'ChZDcmVhdGVJbnZlbnRvcnlSZXF1ZXN0EjUKCWludmVudG9yeRgBIAEoCzIXLmludmVudG9yeS'
    '52MS5JbnZlbnRvcnlSCWludmVudG9yeQ==');

@$core.Deprecated('Use createInventoryResponseDescriptor instead')
const CreateInventoryResponse$json = {
  '1': 'CreateInventoryResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateInventoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createInventoryResponseDescriptor = $convert.base64Decode(
    'ChdDcmVhdGVJbnZlbnRvcnlSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getInventoryRequestDescriptor instead')
const GetInventoryRequest$json = {
  '1': 'GetInventoryRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetInventoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInventoryRequestDescriptor = $convert.base64Decode(
    'ChNHZXRJbnZlbnRvcnlSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use getInventoryResponseDescriptor instead')
const GetInventoryResponse$json = {
  '1': 'GetInventoryResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'article', '3': 2, '4': 1, '5': 11, '6': '.article.v1.Article', '10': 'article'},
    {'1': 'store', '3': 9, '4': 1, '5': 11, '6': '.store.v1.Store', '10': 'store'},
    {'1': 'quantity', '3': 3, '4': 1, '5': 9, '10': 'quantity'},
    {'1': 'categories', '3': 4, '4': 3, '5': 11, '6': '.article_category.v1.ArticleCategory', '10': 'categories'},
    {'1': 'price', '3': 5, '4': 1, '5': 1, '10': 'price'},
    {'1': 'images', '3': 6, '4': 3, '5': 11, '6': '.media.v1.Media', '10': 'images'},
    {'1': 'created_at', '3': 7, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 8, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `GetInventoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInventoryResponseDescriptor = $convert.base64Decode(
    'ChRHZXRJbnZlbnRvcnlSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSLQoHYXJ0aWNsZRgCIAEoCz'
    'ITLmFydGljbGUudjEuQXJ0aWNsZVIHYXJ0aWNsZRIlCgVzdG9yZRgJIAEoCzIPLnN0b3JlLnYx'
    'LlN0b3JlUgVzdG9yZRIaCghxdWFudGl0eRgDIAEoCVIIcXVhbnRpdHkSRAoKY2F0ZWdvcmllcx'
    'gEIAMoCzIkLmFydGljbGVfY2F0ZWdvcnkudjEuQXJ0aWNsZUNhdGVnb3J5UgpjYXRlZ29yaWVz'
    'EhQKBXByaWNlGAUgASgBUgVwcmljZRInCgZpbWFnZXMYBiADKAsyDy5tZWRpYS52MS5NZWRpYV'
    'IGaW1hZ2VzEh0KCmNyZWF0ZWRfYXQYByABKAlSCWNyZWF0ZWRBdBIdCgp1cGRhdGVkX2F0GAgg'
    'ASgJUgl1cGRhdGVkQXQ=');

@$core.Deprecated('Use updateInventoryRequestDescriptor instead')
const UpdateInventoryRequest$json = {
  '1': 'UpdateInventoryRequest',
  '2': [
    {'1': 'inventory', '3': 1, '4': 1, '5': 11, '6': '.inventory.v1.Inventory', '10': 'inventory'},
  ],
};

/// Descriptor for `UpdateInventoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateInventoryRequestDescriptor = $convert.base64Decode(
    'ChZVcGRhdGVJbnZlbnRvcnlSZXF1ZXN0EjUKCWludmVudG9yeRgBIAEoCzIXLmludmVudG9yeS'
    '52MS5JbnZlbnRvcnlSCWludmVudG9yeQ==');

@$core.Deprecated('Use updateInventoryResponseDescriptor instead')
const UpdateInventoryResponse$json = {
  '1': 'UpdateInventoryResponse',
  '2': [
    {'1': 'inventory', '3': 1, '4': 1, '5': 11, '6': '.inventory.v1.Inventory', '10': 'inventory'},
  ],
};

/// Descriptor for `UpdateInventoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateInventoryResponseDescriptor = $convert.base64Decode(
    'ChdVcGRhdGVJbnZlbnRvcnlSZXNwb25zZRI1CglpbnZlbnRvcnkYASABKAsyFy5pbnZlbnRvcn'
    'kudjEuSW52ZW50b3J5UglpbnZlbnRvcnk=');

@$core.Deprecated('Use deleteInventoryRequestDescriptor instead')
const DeleteInventoryRequest$json = {
  '1': 'DeleteInventoryRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteInventoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteInventoryRequestDescriptor = $convert.base64Decode(
    'ChZEZWxldGVJbnZlbnRvcnlSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use deleteInventoryResponseDescriptor instead')
const DeleteInventoryResponse$json = {
  '1': 'DeleteInventoryResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteInventoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteInventoryResponseDescriptor = $convert.base64Decode(
    'ChdEZWxldGVJbnZlbnRvcnlSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

