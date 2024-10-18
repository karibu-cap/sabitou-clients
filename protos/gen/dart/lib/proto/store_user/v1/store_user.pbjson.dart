//
//  Generated code. Do not modify.
//  source: store_user/v1/store_user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use storeRoleDescriptor instead')
const StoreRole$json = {
  '1': 'StoreRole',
  '2': [
    {'1': 'UNSPECIFIED', '2': 0},
    {'1': 'ADMIN', '2': 1},
    {'1': 'MANAGER', '2': 2},
    {'1': 'STAFF', '2': 3},
  ],
};

/// Descriptor for `StoreRole`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List storeRoleDescriptor = $convert.base64Decode(
    'CglTdG9yZVJvbGUSDwoLVU5TUEVDSUZJRUQQABIJCgVBRE1JThABEgsKB01BTkFHRVIQAhIJCg'
    'VTVEFGRhAD');

@$core.Deprecated('Use storePermissionDescriptor instead')
const StorePermission$json = {
  '1': 'StorePermission',
  '2': [
    {'1': 'create_article', '3': 2, '4': 1, '5': 8, '10': 'createArticle'},
    {'1': 'append_article_in_stock', '3': 3, '4': 1, '5': 8, '10': 'appendArticleInStock'},
    {'1': 'remove_article_from_stock', '3': 4, '4': 1, '5': 8, '10': 'removeArticleFromStock'},
    {'1': 'edit_store_information', '3': 5, '4': 1, '5': 8, '10': 'editStoreInformation'},
    {'1': 'financial_report', '3': 6, '4': 1, '5': 8, '10': 'financialReport'},
  ],
};

/// Descriptor for `StorePermission`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storePermissionDescriptor = $convert.base64Decode(
    'Cg9TdG9yZVBlcm1pc3Npb24SJQoOY3JlYXRlX2FydGljbGUYAiABKAhSDWNyZWF0ZUFydGljbG'
    'USNQoXYXBwZW5kX2FydGljbGVfaW5fc3RvY2sYAyABKAhSFGFwcGVuZEFydGljbGVJblN0b2Nr'
    'EjkKGXJlbW92ZV9hcnRpY2xlX2Zyb21fc3RvY2sYBCABKAhSFnJlbW92ZUFydGljbGVGcm9tU3'
    'RvY2sSNAoWZWRpdF9zdG9yZV9pbmZvcm1hdGlvbhgFIAEoCFIUZWRpdFN0b3JlSW5mb3JtYXRp'
    'b24SKQoQZmluYW5jaWFsX3JlcG9ydBgGIAEoCFIPZmluYW5jaWFsUmVwb3J0');

@$core.Deprecated('Use storeUserDescriptor instead')
const StoreUser$json = {
  '1': 'StoreUser',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'store_id', '3': 2, '4': 1, '5': 9, '10': 'storeId'},
    {'1': 'user_id', '3': 3, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'active', '3': 4, '4': 1, '5': 8, '10': 'active'},
    {'1': 'role', '3': 5, '4': 1, '5': 9, '10': 'role'},
    {'1': 'store_permissions', '3': 6, '4': 1, '5': 11, '6': '.store_user.v1.StorePermission', '10': 'storePermissions'},
    {'1': 'created_at', '3': 7, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 8, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `StoreUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storeUserDescriptor = $convert.base64Decode(
    'CglTdG9yZVVzZXISDgoCaWQYASABKAlSAmlkEhkKCHN0b3JlX2lkGAIgASgJUgdzdG9yZUlkEh'
    'cKB3VzZXJfaWQYAyABKAlSBnVzZXJJZBIWCgZhY3RpdmUYBCABKAhSBmFjdGl2ZRISCgRyb2xl'
    'GAUgASgJUgRyb2xlEksKEXN0b3JlX3Blcm1pc3Npb25zGAYgASgLMh4uc3RvcmVfdXNlci52MS'
    '5TdG9yZVBlcm1pc3Npb25SEHN0b3JlUGVybWlzc2lvbnMSHQoKY3JlYXRlZF9hdBgHIAEoCVIJ'
    'Y3JlYXRlZEF0Eh0KCnVwZGF0ZWRfYXQYCCABKAlSCXVwZGF0ZWRBdA==');

@$core.Deprecated('Use createStoreUserRequestDescriptor instead')
const CreateStoreUserRequest$json = {
  '1': 'CreateStoreUserRequest',
  '2': [
    {'1': 'store_user', '3': 1, '4': 1, '5': 11, '6': '.store_user.v1.StoreUser', '10': 'storeUser'},
  ],
};

/// Descriptor for `CreateStoreUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createStoreUserRequestDescriptor = $convert.base64Decode(
    'ChZDcmVhdGVTdG9yZVVzZXJSZXF1ZXN0EjcKCnN0b3JlX3VzZXIYASABKAsyGC5zdG9yZV91c2'
    'VyLnYxLlN0b3JlVXNlclIJc3RvcmVVc2Vy');

@$core.Deprecated('Use createStoreUserResponseDescriptor instead')
const CreateStoreUserResponse$json = {
  '1': 'CreateStoreUserResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateStoreUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createStoreUserResponseDescriptor = $convert.base64Decode(
    'ChdDcmVhdGVTdG9yZVVzZXJSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getStoreUserRequestDescriptor instead')
const GetStoreUserRequest$json = {
  '1': 'GetStoreUserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetStoreUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStoreUserRequestDescriptor = $convert.base64Decode(
    'ChNHZXRTdG9yZVVzZXJSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use getStoreUserResponseDescriptor instead')
const GetStoreUserResponse$json = {
  '1': 'GetStoreUserResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'store', '3': 2, '4': 1, '5': 11, '6': '.store.v1.Store', '10': 'store'},
    {'1': 'user', '3': 3, '4': 1, '5': 11, '6': '.user.v1.User', '10': 'user'},
    {'1': 'active', '3': 4, '4': 1, '5': 8, '10': 'active'},
    {'1': 'store_permissions', '3': 5, '4': 1, '5': 11, '6': '.store_user.v1.StorePermission', '10': 'storePermissions'},
    {'1': 'created_at', '3': 10, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 11, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `GetStoreUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStoreUserResponseDescriptor = $convert.base64Decode(
    'ChRHZXRTdG9yZVVzZXJSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSJQoFc3RvcmUYAiABKAsyDy'
    '5zdG9yZS52MS5TdG9yZVIFc3RvcmUSIQoEdXNlchgDIAEoCzINLnVzZXIudjEuVXNlclIEdXNl'
    'chIWCgZhY3RpdmUYBCABKAhSBmFjdGl2ZRJLChFzdG9yZV9wZXJtaXNzaW9ucxgFIAEoCzIeLn'
    'N0b3JlX3VzZXIudjEuU3RvcmVQZXJtaXNzaW9uUhBzdG9yZVBlcm1pc3Npb25zEh0KCmNyZWF0'
    'ZWRfYXQYCiABKAlSCWNyZWF0ZWRBdBIdCgp1cGRhdGVkX2F0GAsgASgJUgl1cGRhdGVkQXQ=');

@$core.Deprecated('Use updateStoreUserRequestDescriptor instead')
const UpdateStoreUserRequest$json = {
  '1': 'UpdateStoreUserRequest',
  '2': [
    {'1': 'store_user', '3': 1, '4': 1, '5': 11, '6': '.store_user.v1.StoreUser', '10': 'storeUser'},
  ],
};

/// Descriptor for `UpdateStoreUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateStoreUserRequestDescriptor = $convert.base64Decode(
    'ChZVcGRhdGVTdG9yZVVzZXJSZXF1ZXN0EjcKCnN0b3JlX3VzZXIYASABKAsyGC5zdG9yZV91c2'
    'VyLnYxLlN0b3JlVXNlclIJc3RvcmVVc2Vy');

@$core.Deprecated('Use updateStoreUserResponseDescriptor instead')
const UpdateStoreUserResponse$json = {
  '1': 'UpdateStoreUserResponse',
  '2': [
    {'1': 'store_user', '3': 1, '4': 1, '5': 11, '6': '.store_user.v1.StoreUser', '10': 'storeUser'},
  ],
};

/// Descriptor for `UpdateStoreUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateStoreUserResponseDescriptor = $convert.base64Decode(
    'ChdVcGRhdGVTdG9yZVVzZXJSZXNwb25zZRI3CgpzdG9yZV91c2VyGAEgASgLMhguc3RvcmVfdX'
    'Nlci52MS5TdG9yZVVzZXJSCXN0b3JlVXNlcg==');

@$core.Deprecated('Use deleteStoreUserRequestDescriptor instead')
const DeleteStoreUserRequest$json = {
  '1': 'DeleteStoreUserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteStoreUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteStoreUserRequestDescriptor = $convert.base64Decode(
    'ChZEZWxldGVTdG9yZVVzZXJSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use deleteStoreUserResponseDescriptor instead')
const DeleteStoreUserResponse$json = {
  '1': 'DeleteStoreUserResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteStoreUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteStoreUserResponseDescriptor = $convert.base64Decode(
    'ChdEZWxldGVTdG9yZVVzZXJSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

