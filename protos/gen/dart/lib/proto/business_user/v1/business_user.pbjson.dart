//
//  Generated code. Do not modify.
//  source: business_user/v1/business_user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use businessRoleDescriptor instead')
const BusinessRole$json = {
  '1': 'BusinessRole',
  '2': [
    {'1': 'UNSPECIFIED', '2': 0},
    {'1': 'ADMIN', '2': 1},
    {'1': 'MANAGER', '2': 2},
    {'1': 'STAFF', '2': 3},
  ],
};

/// Descriptor for `BusinessRole`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List businessRoleDescriptor = $convert.base64Decode(
    'CgxCdXNpbmVzc1JvbGUSDwoLVU5TUEVDSUZJRUQQABIJCgVBRE1JThABEgsKB01BTkFHRVIQAh'
    'IJCgVTVEFGRhAD');

@$core.Deprecated('Use businessPermissionDescriptor instead')
const BusinessPermission$json = {
  '1': 'BusinessPermission',
  '2': [
    {'1': 'create_a_store', '3': 1, '4': 1, '5': 8, '10': 'createAStore'},
    {'1': 'view_member', '3': 2, '4': 1, '5': 8, '10': 'viewMember'},
    {'1': 'edit_business_information', '3': 3, '4': 1, '5': 8, '10': 'editBusinessInformation'},
    {'1': 'delete_business', '3': 4, '4': 1, '5': 8, '10': 'deleteBusiness'},
  ],
};

/// Descriptor for `BusinessPermission`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List businessPermissionDescriptor = $convert.base64Decode(
    'ChJCdXNpbmVzc1Blcm1pc3Npb24SJAoOY3JlYXRlX2Ffc3RvcmUYASABKAhSDGNyZWF0ZUFTdG'
    '9yZRIfCgt2aWV3X21lbWJlchgCIAEoCFIKdmlld01lbWJlchI6ChllZGl0X2J1c2luZXNzX2lu'
    'Zm9ybWF0aW9uGAMgASgIUhdlZGl0QnVzaW5lc3NJbmZvcm1hdGlvbhInCg9kZWxldGVfYnVzaW'
    '5lc3MYBCABKAhSDmRlbGV0ZUJ1c2luZXNz');

@$core.Deprecated('Use businessUserDescriptor instead')
const BusinessUser$json = {
  '1': 'BusinessUser',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'business_id', '3': 2, '4': 1, '5': 9, '10': 'businessId'},
    {'1': 'user_id', '3': 3, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'active', '3': 4, '4': 1, '5': 8, '10': 'active'},
    {'1': 'role', '3': 5, '4': 1, '5': 9, '10': 'role'},
    {'1': 'business_permissions', '3': 6, '4': 1, '5': 11, '6': '.business_user.v1.BusinessPermission', '10': 'businessPermissions'},
    {'1': 'created_at', '3': 7, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 8, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `BusinessUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List businessUserDescriptor = $convert.base64Decode(
    'CgxCdXNpbmVzc1VzZXISDgoCaWQYASABKAlSAmlkEh8KC2J1c2luZXNzX2lkGAIgASgJUgpidX'
    'NpbmVzc0lkEhcKB3VzZXJfaWQYAyABKAlSBnVzZXJJZBIWCgZhY3RpdmUYBCABKAhSBmFjdGl2'
    'ZRISCgRyb2xlGAUgASgJUgRyb2xlElcKFGJ1c2luZXNzX3Blcm1pc3Npb25zGAYgASgLMiQuYn'
    'VzaW5lc3NfdXNlci52MS5CdXNpbmVzc1Blcm1pc3Npb25SE2J1c2luZXNzUGVybWlzc2lvbnMS'
    'HQoKY3JlYXRlZF9hdBgHIAEoCVIJY3JlYXRlZEF0Eh0KCnVwZGF0ZWRfYXQYCCABKAlSCXVwZG'
    'F0ZWRBdA==');

@$core.Deprecated('Use createBusinessUserRequestDescriptor instead')
const CreateBusinessUserRequest$json = {
  '1': 'CreateBusinessUserRequest',
  '2': [
    {'1': 'business_user', '3': 1, '4': 1, '5': 11, '6': '.business_user.v1.BusinessUser', '10': 'businessUser'},
  ],
};

/// Descriptor for `CreateBusinessUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createBusinessUserRequestDescriptor = $convert.base64Decode(
    'ChlDcmVhdGVCdXNpbmVzc1VzZXJSZXF1ZXN0EkMKDWJ1c2luZXNzX3VzZXIYASABKAsyHi5idX'
    'NpbmVzc191c2VyLnYxLkJ1c2luZXNzVXNlclIMYnVzaW5lc3NVc2Vy');

@$core.Deprecated('Use createBusinessUserResponseDescriptor instead')
const CreateBusinessUserResponse$json = {
  '1': 'CreateBusinessUserResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateBusinessUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createBusinessUserResponseDescriptor = $convert.base64Decode(
    'ChpDcmVhdGVCdXNpbmVzc1VzZXJSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getBusinessUserRequestDescriptor instead')
const GetBusinessUserRequest$json = {
  '1': 'GetBusinessUserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetBusinessUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBusinessUserRequestDescriptor = $convert.base64Decode(
    'ChZHZXRCdXNpbmVzc1VzZXJSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use getBusinessUserResponseDescriptor instead')
const GetBusinessUserResponse$json = {
  '1': 'GetBusinessUserResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'business', '3': 2, '4': 1, '5': 11, '6': '.business.v1.Business', '10': 'business'},
    {'1': 'user', '3': 3, '4': 1, '5': 11, '6': '.user.v1.User', '10': 'user'},
    {'1': 'active', '3': 4, '4': 1, '5': 8, '10': 'active'},
    {'1': 'business_permissions', '3': 5, '4': 1, '5': 11, '6': '.business_user.v1.BusinessPermission', '10': 'businessPermissions'},
    {'1': 'created_at', '3': 6, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'updated_at', '3': 7, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `GetBusinessUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBusinessUserResponseDescriptor = $convert.base64Decode(
    'ChdHZXRCdXNpbmVzc1VzZXJSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSMQoIYnVzaW5lc3MYAi'
    'ABKAsyFS5idXNpbmVzcy52MS5CdXNpbmVzc1IIYnVzaW5lc3MSIQoEdXNlchgDIAEoCzINLnVz'
    'ZXIudjEuVXNlclIEdXNlchIWCgZhY3RpdmUYBCABKAhSBmFjdGl2ZRJXChRidXNpbmVzc19wZX'
    'JtaXNzaW9ucxgFIAEoCzIkLmJ1c2luZXNzX3VzZXIudjEuQnVzaW5lc3NQZXJtaXNzaW9uUhNi'
    'dXNpbmVzc1Blcm1pc3Npb25zEh0KCmNyZWF0ZWRfYXQYBiABKAlSCWNyZWF0ZWRBdBIdCgp1cG'
    'RhdGVkX2F0GAcgASgJUgl1cGRhdGVkQXQ=');

@$core.Deprecated('Use updateBusinessUserRequestDescriptor instead')
const UpdateBusinessUserRequest$json = {
  '1': 'UpdateBusinessUserRequest',
  '2': [
    {'1': 'business_user', '3': 1, '4': 1, '5': 11, '6': '.business_user.v1.BusinessUser', '10': 'businessUser'},
  ],
};

/// Descriptor for `UpdateBusinessUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateBusinessUserRequestDescriptor = $convert.base64Decode(
    'ChlVcGRhdGVCdXNpbmVzc1VzZXJSZXF1ZXN0EkMKDWJ1c2luZXNzX3VzZXIYASABKAsyHi5idX'
    'NpbmVzc191c2VyLnYxLkJ1c2luZXNzVXNlclIMYnVzaW5lc3NVc2Vy');

@$core.Deprecated('Use updateBusinessUserResponseDescriptor instead')
const UpdateBusinessUserResponse$json = {
  '1': 'UpdateBusinessUserResponse',
  '2': [
    {'1': 'business_user', '3': 1, '4': 1, '5': 11, '6': '.business_user.v1.BusinessUser', '10': 'businessUser'},
  ],
};

/// Descriptor for `UpdateBusinessUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateBusinessUserResponseDescriptor = $convert.base64Decode(
    'ChpVcGRhdGVCdXNpbmVzc1VzZXJSZXNwb25zZRJDCg1idXNpbmVzc191c2VyGAEgASgLMh4uYn'
    'VzaW5lc3NfdXNlci52MS5CdXNpbmVzc1VzZXJSDGJ1c2luZXNzVXNlcg==');

@$core.Deprecated('Use deleteBusinessUserRequestDescriptor instead')
const DeleteBusinessUserRequest$json = {
  '1': 'DeleteBusinessUserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteBusinessUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteBusinessUserRequestDescriptor = $convert.base64Decode(
    'ChlEZWxldGVCdXNpbmVzc1VzZXJSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use deleteBusinessUserResponseDescriptor instead')
const DeleteBusinessUserResponse$json = {
  '1': 'DeleteBusinessUserResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteBusinessUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteBusinessUserResponseDescriptor = $convert.base64Decode(
    'ChpEZWxldGVCdXNpbmVzc1VzZXJSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

