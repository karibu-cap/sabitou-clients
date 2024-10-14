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
    {'1': 'UNRECOGNIZED', '2': 0},
    {'1': 'EMAIL', '2': 1},
    {'1': 'GOOGLE', '2': 2},
  ],
};

/// Descriptor for `ConnectionType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List connectionTypeDescriptor = $convert.base64Decode(
    'Cg5Db25uZWN0aW9uVHlwZRIQCgxVTlJFQ09HTklaRUQQABIJCgVFTUFJTBABEgoKBkdPT0dMRR'
    'AC');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'first_name', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'last_name', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    {
      '1': 'password',
      '3': 5,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'password',
      '17': true
    },
    {
      '1': 'connection_type',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.user.v1.ConnectionType',
      '10': 'connectionType'
    },
  ],
  '8': [
    {'1': '_password'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEg4KAmlkGAEgASgJUgJpZBIdCgpmaXJzdF9uYW1lGAIgASgJUglmaXJzdE5hbWUSGw'
    'oJbGFzdF9uYW1lGAMgASgJUghsYXN0TmFtZRIUCgVlbWFpbBgEIAEoCVIFZW1haWwSHwoIcGFz'
    'c3dvcmQYBSABKAlIAFIIcGFzc3dvcmSIAQESQAoPY29ubmVjdGlvbl90eXBlGAYgASgOMhcudX'
    'Nlci52MS5Db25uZWN0aW9uVHlwZVIOY29ubmVjdGlvblR5cGVCCwoJX3Bhc3N3b3Jk');

@$core.Deprecated('Use createUserRequestDescriptor instead')
const CreateUserRequest$json = {
  '1': 'CreateUserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'first_name', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'last_name', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    {
      '1': 'password',
      '3': 5,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'password',
      '17': true
    },
    {
      '1': 'connection_type',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.user.v1.ConnectionType',
      '10': 'connectionType'
    },
  ],
  '8': [
    {'1': '_password'},
  ],
};

/// Descriptor for `CreateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVVc2VyUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSHQoKZmlyc3RfbmFtZRgCIAEoCV'
    'IJZmlyc3ROYW1lEhsKCWxhc3RfbmFtZRgDIAEoCVIIbGFzdE5hbWUSFAoFZW1haWwYBCABKAlS'
    'BWVtYWlsEh8KCHBhc3N3b3JkGAUgASgJSABSCHBhc3N3b3JkiAEBEkAKD2Nvbm5lY3Rpb25fdH'
    'lwZRgGIAEoDjIXLnVzZXIudjEuQ29ubmVjdGlvblR5cGVSDmNvbm5lY3Rpb25UeXBlQgsKCV9w'
    'YXNzd29yZA==');

@$core.Deprecated('Use getUserRequestDescriptor instead')
const GetUserRequest$json = {
  '1': 'GetUserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'id', '17': true},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'email', '17': true},
    {
      '1': 'password',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'password',
      '17': true
    },
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
