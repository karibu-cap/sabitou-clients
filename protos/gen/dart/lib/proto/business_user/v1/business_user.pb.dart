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

import '../../business/v1/business.pb.dart' as $3;
import '../../user/v1/user.pb.dart' as $5;

export 'business_user.pbenum.dart';

class BusinessPermission extends $pb.GeneratedMessage {
  factory BusinessPermission({
    $core.bool? createAStore,
    $core.bool? viewMember,
    $core.bool? editBusinessInformation,
    $core.bool? deleteBusiness,
  }) {
    final $result = create();
    if (createAStore != null) {
      $result.createAStore = createAStore;
    }
    if (viewMember != null) {
      $result.viewMember = viewMember;
    }
    if (editBusinessInformation != null) {
      $result.editBusinessInformation = editBusinessInformation;
    }
    if (deleteBusiness != null) {
      $result.deleteBusiness = deleteBusiness;
    }
    return $result;
  }
  BusinessPermission._() : super();
  factory BusinessPermission.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BusinessPermission.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BusinessPermission', package: const $pb.PackageName(_omitMessageNames ? '' : 'business_user.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'createAStore')
    ..aOB(2, _omitFieldNames ? '' : 'viewMember')
    ..aOB(3, _omitFieldNames ? '' : 'editBusinessInformation')
    ..aOB(4, _omitFieldNames ? '' : 'deleteBusiness')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BusinessPermission clone() => BusinessPermission()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BusinessPermission copyWith(void Function(BusinessPermission) updates) => super.copyWith((message) => updates(message as BusinessPermission)) as BusinessPermission;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BusinessPermission create() => BusinessPermission._();
  BusinessPermission createEmptyInstance() => create();
  static $pb.PbList<BusinessPermission> createRepeated() => $pb.PbList<BusinessPermission>();
  @$core.pragma('dart2js:noInline')
  static BusinessPermission getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BusinessPermission>(create);
  static BusinessPermission? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get createAStore => $_getBF(0);
  @$pb.TagNumber(1)
  set createAStore($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreateAStore() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreateAStore() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get viewMember => $_getBF(1);
  @$pb.TagNumber(2)
  set viewMember($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasViewMember() => $_has(1);
  @$pb.TagNumber(2)
  void clearViewMember() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get editBusinessInformation => $_getBF(2);
  @$pb.TagNumber(3)
  set editBusinessInformation($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEditBusinessInformation() => $_has(2);
  @$pb.TagNumber(3)
  void clearEditBusinessInformation() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get deleteBusiness => $_getBF(3);
  @$pb.TagNumber(4)
  set deleteBusiness($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDeleteBusiness() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeleteBusiness() => clearField(4);
}

class BusinessUser extends $pb.GeneratedMessage {
  factory BusinessUser({
    $core.String? id,
    $core.String? businessId,
    $core.String? userId,
    $core.bool? active,
    $core.String? role,
    BusinessPermission? businessPermissions,
    $core.String? createdAt,
    $core.String? updatedAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (businessId != null) {
      $result.businessId = businessId;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (active != null) {
      $result.active = active;
    }
    if (role != null) {
      $result.role = role;
    }
    if (businessPermissions != null) {
      $result.businessPermissions = businessPermissions;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    return $result;
  }
  BusinessUser._() : super();
  factory BusinessUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BusinessUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BusinessUser', package: const $pb.PackageName(_omitMessageNames ? '' : 'business_user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'businessId')
    ..aOS(3, _omitFieldNames ? '' : 'userId')
    ..aOB(4, _omitFieldNames ? '' : 'active')
    ..aOS(5, _omitFieldNames ? '' : 'role')
    ..aOM<BusinessPermission>(6, _omitFieldNames ? '' : 'businessPermissions', subBuilder: BusinessPermission.create)
    ..aOS(7, _omitFieldNames ? '' : 'createdAt')
    ..aOS(8, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BusinessUser clone() => BusinessUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BusinessUser copyWith(void Function(BusinessUser) updates) => super.copyWith((message) => updates(message as BusinessUser)) as BusinessUser;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BusinessUser create() => BusinessUser._();
  BusinessUser createEmptyInstance() => create();
  static $pb.PbList<BusinessUser> createRepeated() => $pb.PbList<BusinessUser>();
  @$core.pragma('dart2js:noInline')
  static BusinessUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BusinessUser>(create);
  static BusinessUser? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get businessId => $_getSZ(1);
  @$pb.TagNumber(2)
  set businessId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBusinessId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBusinessId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get userId => $_getSZ(2);
  @$pb.TagNumber(3)
  set userId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get active => $_getBF(3);
  @$pb.TagNumber(4)
  set active($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasActive() => $_has(3);
  @$pb.TagNumber(4)
  void clearActive() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get role => $_getSZ(4);
  @$pb.TagNumber(5)
  set role($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRole() => $_has(4);
  @$pb.TagNumber(5)
  void clearRole() => clearField(5);

  @$pb.TagNumber(6)
  BusinessPermission get businessPermissions => $_getN(5);
  @$pb.TagNumber(6)
  set businessPermissions(BusinessPermission v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasBusinessPermissions() => $_has(5);
  @$pb.TagNumber(6)
  void clearBusinessPermissions() => clearField(6);
  @$pb.TagNumber(6)
  BusinessPermission ensureBusinessPermissions() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get createdAt => $_getSZ(6);
  @$pb.TagNumber(7)
  set createdAt($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get updatedAt => $_getSZ(7);
  @$pb.TagNumber(8)
  set updatedAt($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUpdatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearUpdatedAt() => clearField(8);
}

class CreateBusinessUserRequest extends $pb.GeneratedMessage {
  factory CreateBusinessUserRequest({
    BusinessUser? businessUser,
  }) {
    final $result = create();
    if (businessUser != null) {
      $result.businessUser = businessUser;
    }
    return $result;
  }
  CreateBusinessUserRequest._() : super();
  factory CreateBusinessUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateBusinessUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateBusinessUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'business_user.v1'), createEmptyInstance: create)
    ..aOM<BusinessUser>(1, _omitFieldNames ? '' : 'businessUser', subBuilder: BusinessUser.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateBusinessUserRequest clone() => CreateBusinessUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateBusinessUserRequest copyWith(void Function(CreateBusinessUserRequest) updates) => super.copyWith((message) => updates(message as CreateBusinessUserRequest)) as CreateBusinessUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateBusinessUserRequest create() => CreateBusinessUserRequest._();
  CreateBusinessUserRequest createEmptyInstance() => create();
  static $pb.PbList<CreateBusinessUserRequest> createRepeated() => $pb.PbList<CreateBusinessUserRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateBusinessUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateBusinessUserRequest>(create);
  static CreateBusinessUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  BusinessUser get businessUser => $_getN(0);
  @$pb.TagNumber(1)
  set businessUser(BusinessUser v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBusinessUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearBusinessUser() => clearField(1);
  @$pb.TagNumber(1)
  BusinessUser ensureBusinessUser() => $_ensure(0);
}

class CreateBusinessUserResponse extends $pb.GeneratedMessage {
  factory CreateBusinessUserResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CreateBusinessUserResponse._() : super();
  factory CreateBusinessUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateBusinessUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateBusinessUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'business_user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateBusinessUserResponse clone() => CreateBusinessUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateBusinessUserResponse copyWith(void Function(CreateBusinessUserResponse) updates) => super.copyWith((message) => updates(message as CreateBusinessUserResponse)) as CreateBusinessUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateBusinessUserResponse create() => CreateBusinessUserResponse._();
  CreateBusinessUserResponse createEmptyInstance() => create();
  static $pb.PbList<CreateBusinessUserResponse> createRepeated() => $pb.PbList<CreateBusinessUserResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateBusinessUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateBusinessUserResponse>(create);
  static CreateBusinessUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetBusinessUserRequest extends $pb.GeneratedMessage {
  factory GetBusinessUserRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetBusinessUserRequest._() : super();
  factory GetBusinessUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBusinessUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBusinessUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'business_user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBusinessUserRequest clone() => GetBusinessUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBusinessUserRequest copyWith(void Function(GetBusinessUserRequest) updates) => super.copyWith((message) => updates(message as GetBusinessUserRequest)) as GetBusinessUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBusinessUserRequest create() => GetBusinessUserRequest._();
  GetBusinessUserRequest createEmptyInstance() => create();
  static $pb.PbList<GetBusinessUserRequest> createRepeated() => $pb.PbList<GetBusinessUserRequest>();
  @$core.pragma('dart2js:noInline')
  static GetBusinessUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBusinessUserRequest>(create);
  static GetBusinessUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetBusinessUserResponse extends $pb.GeneratedMessage {
  factory GetBusinessUserResponse({
    $core.String? id,
    $3.Business? business,
    $5.User? user,
    $core.bool? active,
    BusinessPermission? businessPermissions,
    $core.String? createdAt,
    $core.String? updatedAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (business != null) {
      $result.business = business;
    }
    if (user != null) {
      $result.user = user;
    }
    if (active != null) {
      $result.active = active;
    }
    if (businessPermissions != null) {
      $result.businessPermissions = businessPermissions;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    return $result;
  }
  GetBusinessUserResponse._() : super();
  factory GetBusinessUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBusinessUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBusinessUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'business_user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$3.Business>(2, _omitFieldNames ? '' : 'business', subBuilder: $3.Business.create)
    ..aOM<$5.User>(3, _omitFieldNames ? '' : 'user', subBuilder: $5.User.create)
    ..aOB(4, _omitFieldNames ? '' : 'active')
    ..aOM<BusinessPermission>(5, _omitFieldNames ? '' : 'businessPermissions', subBuilder: BusinessPermission.create)
    ..aOS(6, _omitFieldNames ? '' : 'createdAt')
    ..aOS(7, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBusinessUserResponse clone() => GetBusinessUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBusinessUserResponse copyWith(void Function(GetBusinessUserResponse) updates) => super.copyWith((message) => updates(message as GetBusinessUserResponse)) as GetBusinessUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBusinessUserResponse create() => GetBusinessUserResponse._();
  GetBusinessUserResponse createEmptyInstance() => create();
  static $pb.PbList<GetBusinessUserResponse> createRepeated() => $pb.PbList<GetBusinessUserResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBusinessUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBusinessUserResponse>(create);
  static GetBusinessUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $3.Business get business => $_getN(1);
  @$pb.TagNumber(2)
  set business($3.Business v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBusiness() => $_has(1);
  @$pb.TagNumber(2)
  void clearBusiness() => clearField(2);
  @$pb.TagNumber(2)
  $3.Business ensureBusiness() => $_ensure(1);

  @$pb.TagNumber(3)
  $5.User get user => $_getN(2);
  @$pb.TagNumber(3)
  set user($5.User v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUser() => $_has(2);
  @$pb.TagNumber(3)
  void clearUser() => clearField(3);
  @$pb.TagNumber(3)
  $5.User ensureUser() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get active => $_getBF(3);
  @$pb.TagNumber(4)
  set active($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasActive() => $_has(3);
  @$pb.TagNumber(4)
  void clearActive() => clearField(4);

  @$pb.TagNumber(5)
  BusinessPermission get businessPermissions => $_getN(4);
  @$pb.TagNumber(5)
  set businessPermissions(BusinessPermission v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasBusinessPermissions() => $_has(4);
  @$pb.TagNumber(5)
  void clearBusinessPermissions() => clearField(5);
  @$pb.TagNumber(5)
  BusinessPermission ensureBusinessPermissions() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get createdAt => $_getSZ(5);
  @$pb.TagNumber(6)
  set createdAt($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedAt() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get updatedAt => $_getSZ(6);
  @$pb.TagNumber(7)
  set updatedAt($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUpdatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdatedAt() => clearField(7);
}

class UpdateBusinessUserRequest extends $pb.GeneratedMessage {
  factory UpdateBusinessUserRequest({
    BusinessUser? businessUser,
  }) {
    final $result = create();
    if (businessUser != null) {
      $result.businessUser = businessUser;
    }
    return $result;
  }
  UpdateBusinessUserRequest._() : super();
  factory UpdateBusinessUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateBusinessUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateBusinessUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'business_user.v1'), createEmptyInstance: create)
    ..aOM<BusinessUser>(1, _omitFieldNames ? '' : 'businessUser', subBuilder: BusinessUser.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateBusinessUserRequest clone() => UpdateBusinessUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateBusinessUserRequest copyWith(void Function(UpdateBusinessUserRequest) updates) => super.copyWith((message) => updates(message as UpdateBusinessUserRequest)) as UpdateBusinessUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateBusinessUserRequest create() => UpdateBusinessUserRequest._();
  UpdateBusinessUserRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateBusinessUserRequest> createRepeated() => $pb.PbList<UpdateBusinessUserRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateBusinessUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateBusinessUserRequest>(create);
  static UpdateBusinessUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  BusinessUser get businessUser => $_getN(0);
  @$pb.TagNumber(1)
  set businessUser(BusinessUser v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBusinessUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearBusinessUser() => clearField(1);
  @$pb.TagNumber(1)
  BusinessUser ensureBusinessUser() => $_ensure(0);
}

class UpdateBusinessUserResponse extends $pb.GeneratedMessage {
  factory UpdateBusinessUserResponse({
    BusinessUser? businessUser,
  }) {
    final $result = create();
    if (businessUser != null) {
      $result.businessUser = businessUser;
    }
    return $result;
  }
  UpdateBusinessUserResponse._() : super();
  factory UpdateBusinessUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateBusinessUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateBusinessUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'business_user.v1'), createEmptyInstance: create)
    ..aOM<BusinessUser>(1, _omitFieldNames ? '' : 'businessUser', subBuilder: BusinessUser.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateBusinessUserResponse clone() => UpdateBusinessUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateBusinessUserResponse copyWith(void Function(UpdateBusinessUserResponse) updates) => super.copyWith((message) => updates(message as UpdateBusinessUserResponse)) as UpdateBusinessUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateBusinessUserResponse create() => UpdateBusinessUserResponse._();
  UpdateBusinessUserResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateBusinessUserResponse> createRepeated() => $pb.PbList<UpdateBusinessUserResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateBusinessUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateBusinessUserResponse>(create);
  static UpdateBusinessUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  BusinessUser get businessUser => $_getN(0);
  @$pb.TagNumber(1)
  set businessUser(BusinessUser v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBusinessUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearBusinessUser() => clearField(1);
  @$pb.TagNumber(1)
  BusinessUser ensureBusinessUser() => $_ensure(0);
}

class DeleteBusinessUserRequest extends $pb.GeneratedMessage {
  factory DeleteBusinessUserRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteBusinessUserRequest._() : super();
  factory DeleteBusinessUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteBusinessUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteBusinessUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'business_user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteBusinessUserRequest clone() => DeleteBusinessUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteBusinessUserRequest copyWith(void Function(DeleteBusinessUserRequest) updates) => super.copyWith((message) => updates(message as DeleteBusinessUserRequest)) as DeleteBusinessUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteBusinessUserRequest create() => DeleteBusinessUserRequest._();
  DeleteBusinessUserRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteBusinessUserRequest> createRepeated() => $pb.PbList<DeleteBusinessUserRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteBusinessUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteBusinessUserRequest>(create);
  static DeleteBusinessUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteBusinessUserResponse extends $pb.GeneratedMessage {
  factory DeleteBusinessUserResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteBusinessUserResponse._() : super();
  factory DeleteBusinessUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteBusinessUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteBusinessUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'business_user.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteBusinessUserResponse clone() => DeleteBusinessUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteBusinessUserResponse copyWith(void Function(DeleteBusinessUserResponse) updates) => super.copyWith((message) => updates(message as DeleteBusinessUserResponse)) as DeleteBusinessUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteBusinessUserResponse create() => DeleteBusinessUserResponse._();
  DeleteBusinessUserResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteBusinessUserResponse> createRepeated() => $pb.PbList<DeleteBusinessUserResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteBusinessUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteBusinessUserResponse>(create);
  static DeleteBusinessUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
