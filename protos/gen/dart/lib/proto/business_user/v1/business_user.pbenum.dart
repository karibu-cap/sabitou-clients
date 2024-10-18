//
//  Generated code. Do not modify.
//  source: business_user/v1/business_user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class BusinessRole extends $pb.ProtobufEnum {
  static const BusinessRole UNSPECIFIED = BusinessRole._(0, _omitEnumNames ? '' : 'UNSPECIFIED');
  static const BusinessRole ADMIN = BusinessRole._(1, _omitEnumNames ? '' : 'ADMIN');
  static const BusinessRole MANAGER = BusinessRole._(2, _omitEnumNames ? '' : 'MANAGER');
  static const BusinessRole STAFF = BusinessRole._(3, _omitEnumNames ? '' : 'STAFF');

  static const $core.List<BusinessRole> values = <BusinessRole> [
    UNSPECIFIED,
    ADMIN,
    MANAGER,
    STAFF,
  ];

  static final $core.Map<$core.int, BusinessRole> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BusinessRole? valueOf($core.int value) => _byValue[value];

  const BusinessRole._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
