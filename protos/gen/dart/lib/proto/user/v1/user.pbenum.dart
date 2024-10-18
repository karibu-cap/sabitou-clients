//
//  Generated code. Do not modify.
//  source: user/v1/user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ConnectionType extends $pb.ProtobufEnum {
  static const ConnectionType UNSPECIFIED = ConnectionType._(0, _omitEnumNames ? '' : 'UNSPECIFIED');
  static const ConnectionType EMAIL = ConnectionType._(1, _omitEnumNames ? '' : 'EMAIL');
  static const ConnectionType GOOGLE = ConnectionType._(2, _omitEnumNames ? '' : 'GOOGLE');

  static const $core.List<ConnectionType> values = <ConnectionType> [
    UNSPECIFIED,
    EMAIL,
    GOOGLE,
  ];

  static final $core.Map<$core.int, ConnectionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ConnectionType? valueOf($core.int value) => _byValue[value];

  const ConnectionType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
