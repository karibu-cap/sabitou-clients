//
//  Generated code. Do not modify.
//  source: user/v1/user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use connectionTypeDescriptor instead')
const ConnectionType$json = {
  '1': 'ConnectionType',
  '2': [
    {'1': 'UNSPECIFIED', '2': 0},
    {'1': 'EMAIL', '2': 1},
    {'1': 'GOOGLE', '2': 2},
  ],
};

/// Descriptor for `ConnectionType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List connectionTypeDescriptor = $convert.base64Decode(
    'Cg5Db25uZWN0aW9uVHlwZRIPCgtVTlNQRUNJRklFRBAAEgkKBUVNQUlMEAESCgoGR09PR0xFEA'
    'I=');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'first_name', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'last_name', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'password', '17': true},
    {'1': 'connection_type', '3': 6, '4': 1, '5': 9, '10': 'connectionType'},
    {'1': 'image_uri', '3': 7, '4': 1, '5': 9, '9': 1, '10': 'imageUri', '17': true},
    {'1': 'updated_at', '3': 8, '4': 1, '5': 9, '10': 'updatedAt'},
    {'1': 'created_at', '3': 9, '4': 1, '5': 9, '10': 'createdAt'},
  ],
  '8': [
    {'1': '_password'},
    {'1': '_image_uri'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEg4KAmlkGAEgASgJUgJpZBIdCgpmaXJzdF9uYW1lGAIgASgJUglmaXJzdE5hbWUSGw'
    'oJbGFzdF9uYW1lGAMgASgJUghsYXN0TmFtZRIUCgVlbWFpbBgEIAEoCVIFZW1haWwSHwoIcGFz'
    'c3dvcmQYBSABKAlIAFIIcGFzc3dvcmSIAQESJwoPY29ubmVjdGlvbl90eXBlGAYgASgJUg5jb2'
    '5uZWN0aW9uVHlwZRIgCglpbWFnZV91cmkYByABKAlIAVIIaW1hZ2VVcmmIAQESHQoKdXBkYXRl'
    'ZF9hdBgIIAEoCVIJdXBkYXRlZEF0Eh0KCmNyZWF0ZWRfYXQYCSABKAlSCWNyZWF0ZWRBdEILCg'
    'lfcGFzc3dvcmRCDAoKX2ltYWdlX3VyaQ==');

@$core.Deprecated('Use createUserRequestDescriptor instead')
const CreateUserRequest$json = {
  '1': 'CreateUserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'id', '17': true},
    {'1': 'first_name', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'last_name', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'password', '17': true},
    {'1': 'connection_type', '3': 6, '4': 1, '5': 9, '10': 'connectionType'},
    {'1': 'image_uri', '3': 7, '4': 1, '5': 9, '9': 2, '10': 'imageUri', '17': true},
  ],
  '8': [
    {'1': '_id'},
    {'1': '_password'},
    {'1': '_image_uri'},
  ],
};

/// Descriptor for `CreateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVVc2VyUmVxdWVzdBITCgJpZBgBIAEoCUgAUgJpZIgBARIdCgpmaXJzdF9uYW1lGA'
    'IgASgJUglmaXJzdE5hbWUSGwoJbGFzdF9uYW1lGAMgASgJUghsYXN0TmFtZRIUCgVlbWFpbBgE'
    'IAEoCVIFZW1haWwSHwoIcGFzc3dvcmQYBSABKAlIAVIIcGFzc3dvcmSIAQESJwoPY29ubmVjdG'
    'lvbl90eXBlGAYgASgJUg5jb25uZWN0aW9uVHlwZRIgCglpbWFnZV91cmkYByABKAlIAlIIaW1h'
    'Z2VVcmmIAQFCBQoDX2lkQgsKCV9wYXNzd29yZEIMCgpfaW1hZ2VfdXJp');

@$core.Deprecated('Use createUserResponseDescriptor instead')
const CreateUserResponse$json = {
  '1': 'CreateUserResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVVc2VyUmVzcG9uc2USDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use getUserRequestDescriptor instead')
const GetUserRequest$json = {
  '1': 'GetUserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'id', '17': true},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'email', '17': true},
    {'1': 'password', '3': 3, '4': 1, '5': 9, '9': 2, '10': 'password', '17': true},
  ],
  '8': [
    {'1': '_id'},
    {'1': '_email'},
    {'1': '_password'},
  ],
};

/// Descriptor for `GetUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRVc2VyUmVxdWVzdBITCgJpZBgBIAEoCUgAUgJpZIgBARIZCgVlbWFpbBgCIAEoCUgBUg'
    'VlbWFpbIgBARIfCghwYXNzd29yZBgDIAEoCUgCUghwYXNzd29yZIgBAUIFCgNfaWRCCAoGX2Vt'
    'YWlsQgsKCV9wYXNzd29yZA==');

@$core.Deprecated('Use getUserResponseDescriptor instead')
const GetUserResponse$json = {
  '1': 'GetUserResponse',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.user.v1.User', '10': 'user'},
  ],
};

/// Descriptor for `GetUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRVc2VyUmVzcG9uc2USIQoEdXNlchgBIAEoCzINLnVzZXIudjEuVXNlclIEdXNlcg==');

@$core.Deprecated('Use updateUserRequestDescriptor instead')
const UpdateUserRequest$json = {
  '1': 'UpdateUserRequest',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.user.v1.User', '10': 'user'},
  ],
};

/// Descriptor for `UpdateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVVc2VyUmVxdWVzdBIhCgR1c2VyGAEgASgLMg0udXNlci52MS5Vc2VyUgR1c2Vy');

@$core.Deprecated('Use updateUserResponseDescriptor instead')
const UpdateUserResponse$json = {
  '1': 'UpdateUserResponse',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.user.v1.User', '10': 'user'},
  ],
};

/// Descriptor for `UpdateUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserResponseDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVVc2VyUmVzcG9uc2USIQoEdXNlchgBIAEoCzINLnVzZXIudjEuVXNlclIEdXNlcg'
    '==');

@$core.Deprecated('Use deleteUserRequestDescriptor instead')
const DeleteUserRequest$json = {
  '1': 'DeleteUserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeleteUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteUserRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVVc2VyUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use deleteUserResponseDescriptor instead')
const DeleteUserResponse$json = {
  '1': 'DeleteUserResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteUserResponseDescriptor = $convert.base64Decode(
    'ChJEZWxldGVVc2VyUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');

