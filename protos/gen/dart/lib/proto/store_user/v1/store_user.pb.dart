//
//  Generated code. Do not modify.
//  source: store_user/v1/store_user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../store/v1/store.pb.dart' as $7;
import '../../user/v1/user.pb.dart' as $5;

export 'store_user.pbenum.dart';

class StorePermission extends $pb.GeneratedMessage {
  factory StorePermission({
    $core.bool? createArticle,
    $core.bool? appendArticleInStock,
    $core.bool? removeArticleFromStock,
    $core.bool? editStoreInformation,
    $core.bool? financialReport,
  }) {
    final $result = create();
    if (createArticle != null) {
      $result.createArticle = createArticle;
    }
    if (appendArticleInStock != null) {
      $result.appendArticleInStock = appendArticleInStock;
    }
    if (removeArticleFromStock != null) {
      $result.removeArticleFromStock = removeArticleFromStock;
    }
    if (editStoreInformation != null) {
      $result.editStoreInformation = editStoreInformation;
    }
    if (financialReport != null) {
      $result.financialReport = financialReport;
    }
    return $result;
  }
  StorePermission._() : super();
  factory StorePermission.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StorePermission.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StorePermission', package: const $pb.PackageName(_omitMessageNames ? '' : 'store_user.v1'), createEmptyInstance: create)
    ..aOB(2, _omitFieldNames ? '' : 'createArticle')
    ..aOB(3, _omitFieldNames ? '' : 'appendArticleInStock')
    ..aOB(4, _omitFieldNames ? '' : 'removeArticleFromStock')
    ..aOB(5, _omitFieldNames ? '' : 'editStoreInformation')
    ..aOB(6, _omitFieldNames ? '' : 'financialReport')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StorePermission clone() => StorePermission()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StorePermission copyWith(void Function(StorePermission) updates) => super.copyWith((message) => updates(message as StorePermission)) as StorePermission;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorePermission create() => StorePermission._();
  StorePermission createEmptyInstance() => create();
  static $pb.PbList<StorePermission> createRepeated() => $pb.PbList<StorePermission>();
  @$core.pragma('dart2js:noInline')
  static StorePermission getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StorePermission>(create);
  static StorePermission? _defaultInstance;

  @$pb.TagNumber(2)
  $core.bool get createArticle => $_getBF(0);
  @$pb.TagNumber(2)
  set createArticle($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreateArticle() => $_has(0);
  @$pb.TagNumber(2)
  void clearCreateArticle() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get appendArticleInStock => $_getBF(1);
  @$pb.TagNumber(3)
  set appendArticleInStock($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppendArticleInStock() => $_has(1);
  @$pb.TagNumber(3)
  void clearAppendArticleInStock() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get removeArticleFromStock => $_getBF(2);
  @$pb.TagNumber(4)
  set removeArticleFromStock($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasRemoveArticleFromStock() => $_has(2);
  @$pb.TagNumber(4)
  void clearRemoveArticleFromStock() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get editStoreInformation => $_getBF(3);
  @$pb.TagNumber(5)
  set editStoreInformation($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasEditStoreInformation() => $_has(3);
  @$pb.TagNumber(5)
  void clearEditStoreInformation() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get financialReport => $_getBF(4);
  @$pb.TagNumber(6)
  set financialReport($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasFinancialReport() => $_has(4);
  @$pb.TagNumber(6)
  void clearFinancialReport() => clearField(6);
}

class StoreUser extends $pb.GeneratedMessage {
  factory StoreUser({
    $core.String? id,
    $core.String? storeId,
    $core.String? userId,
    $core.bool? active,
    $core.String? role,
    StorePermission? storePermissions,
    $core.String? createdAt,
    $core.String? updatedAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (storeId != null) {
      $result.storeId = storeId;
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
    if (storePermissions != null) {
      $result.storePermissions = storePermissions;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    return $result;
  }
  StoreUser._() : super();
  factory StoreUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StoreUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StoreUser', package: const $pb.PackageName(_omitMessageNames ? '' : 'store_user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'storeId')
    ..aOS(3, _omitFieldNames ? '' : 'userId')
    ..aOB(4, _omitFieldNames ? '' : 'active')
    ..aOS(5, _omitFieldNames ? '' : 'role')
    ..aOM<StorePermission>(6, _omitFieldNames ? '' : 'storePermissions', subBuilder: StorePermission.create)
    ..aOS(7, _omitFieldNames ? '' : 'createdAt')
    ..aOS(8, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StoreUser clone() => StoreUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StoreUser copyWith(void Function(StoreUser) updates) => super.copyWith((message) => updates(message as StoreUser)) as StoreUser;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StoreUser create() => StoreUser._();
  StoreUser createEmptyInstance() => create();
  static $pb.PbList<StoreUser> createRepeated() => $pb.PbList<StoreUser>();
  @$core.pragma('dart2js:noInline')
  static StoreUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StoreUser>(create);
  static StoreUser? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreId() => clearField(2);

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
  StorePermission get storePermissions => $_getN(5);
  @$pb.TagNumber(6)
  set storePermissions(StorePermission v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasStorePermissions() => $_has(5);
  @$pb.TagNumber(6)
  void clearStorePermissions() => clearField(6);
  @$pb.TagNumber(6)
  StorePermission ensureStorePermissions() => $_ensure(5);

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

class CreateStoreUserRequest extends $pb.GeneratedMessage {
  factory CreateStoreUserRequest({
    StoreUser? storeUser,
  }) {
    final $result = create();
    if (storeUser != null) {
      $result.storeUser = storeUser;
    }
    return $result;
  }
  CreateStoreUserRequest._() : super();
  factory CreateStoreUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateStoreUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateStoreUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'store_user.v1'), createEmptyInstance: create)
    ..aOM<StoreUser>(1, _omitFieldNames ? '' : 'storeUser', subBuilder: StoreUser.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateStoreUserRequest clone() => CreateStoreUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateStoreUserRequest copyWith(void Function(CreateStoreUserRequest) updates) => super.copyWith((message) => updates(message as CreateStoreUserRequest)) as CreateStoreUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateStoreUserRequest create() => CreateStoreUserRequest._();
  CreateStoreUserRequest createEmptyInstance() => create();
  static $pb.PbList<CreateStoreUserRequest> createRepeated() => $pb.PbList<CreateStoreUserRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateStoreUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateStoreUserRequest>(create);
  static CreateStoreUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  StoreUser get storeUser => $_getN(0);
  @$pb.TagNumber(1)
  set storeUser(StoreUser v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreUser() => clearField(1);
  @$pb.TagNumber(1)
  StoreUser ensureStoreUser() => $_ensure(0);
}

class CreateStoreUserResponse extends $pb.GeneratedMessage {
  factory CreateStoreUserResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CreateStoreUserResponse._() : super();
  factory CreateStoreUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateStoreUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateStoreUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'store_user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateStoreUserResponse clone() => CreateStoreUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateStoreUserResponse copyWith(void Function(CreateStoreUserResponse) updates) => super.copyWith((message) => updates(message as CreateStoreUserResponse)) as CreateStoreUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateStoreUserResponse create() => CreateStoreUserResponse._();
  CreateStoreUserResponse createEmptyInstance() => create();
  static $pb.PbList<CreateStoreUserResponse> createRepeated() => $pb.PbList<CreateStoreUserResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateStoreUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateStoreUserResponse>(create);
  static CreateStoreUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetStoreUserRequest extends $pb.GeneratedMessage {
  factory GetStoreUserRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetStoreUserRequest._() : super();
  factory GetStoreUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStoreUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetStoreUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'store_user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStoreUserRequest clone() => GetStoreUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStoreUserRequest copyWith(void Function(GetStoreUserRequest) updates) => super.copyWith((message) => updates(message as GetStoreUserRequest)) as GetStoreUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStoreUserRequest create() => GetStoreUserRequest._();
  GetStoreUserRequest createEmptyInstance() => create();
  static $pb.PbList<GetStoreUserRequest> createRepeated() => $pb.PbList<GetStoreUserRequest>();
  @$core.pragma('dart2js:noInline')
  static GetStoreUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStoreUserRequest>(create);
  static GetStoreUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetStoreUserResponse extends $pb.GeneratedMessage {
  factory GetStoreUserResponse({
    $core.String? id,
    $7.Store? store,
    $5.User? user,
    $core.bool? active,
    StorePermission? storePermissions,
    $core.String? createdAt,
    $core.String? updatedAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (store != null) {
      $result.store = store;
    }
    if (user != null) {
      $result.user = user;
    }
    if (active != null) {
      $result.active = active;
    }
    if (storePermissions != null) {
      $result.storePermissions = storePermissions;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    return $result;
  }
  GetStoreUserResponse._() : super();
  factory GetStoreUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStoreUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetStoreUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'store_user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$7.Store>(2, _omitFieldNames ? '' : 'store', subBuilder: $7.Store.create)
    ..aOM<$5.User>(3, _omitFieldNames ? '' : 'user', subBuilder: $5.User.create)
    ..aOB(4, _omitFieldNames ? '' : 'active')
    ..aOM<StorePermission>(5, _omitFieldNames ? '' : 'storePermissions', subBuilder: StorePermission.create)
    ..aOS(10, _omitFieldNames ? '' : 'createdAt')
    ..aOS(11, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStoreUserResponse clone() => GetStoreUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStoreUserResponse copyWith(void Function(GetStoreUserResponse) updates) => super.copyWith((message) => updates(message as GetStoreUserResponse)) as GetStoreUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStoreUserResponse create() => GetStoreUserResponse._();
  GetStoreUserResponse createEmptyInstance() => create();
  static $pb.PbList<GetStoreUserResponse> createRepeated() => $pb.PbList<GetStoreUserResponse>();
  @$core.pragma('dart2js:noInline')
  static GetStoreUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStoreUserResponse>(create);
  static GetStoreUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $7.Store get store => $_getN(1);
  @$pb.TagNumber(2)
  set store($7.Store v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStore() => $_has(1);
  @$pb.TagNumber(2)
  void clearStore() => clearField(2);
  @$pb.TagNumber(2)
  $7.Store ensureStore() => $_ensure(1);

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
  StorePermission get storePermissions => $_getN(4);
  @$pb.TagNumber(5)
  set storePermissions(StorePermission v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStorePermissions() => $_has(4);
  @$pb.TagNumber(5)
  void clearStorePermissions() => clearField(5);
  @$pb.TagNumber(5)
  StorePermission ensureStorePermissions() => $_ensure(4);

  @$pb.TagNumber(10)
  $core.String get createdAt => $_getSZ(5);
  @$pb.TagNumber(10)
  set createdAt($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(10)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(10)
  void clearCreatedAt() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get updatedAt => $_getSZ(6);
  @$pb.TagNumber(11)
  set updatedAt($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(11)
  $core.bool hasUpdatedAt() => $_has(6);
  @$pb.TagNumber(11)
  void clearUpdatedAt() => clearField(11);
}

class UpdateStoreUserRequest extends $pb.GeneratedMessage {
  factory UpdateStoreUserRequest({
    StoreUser? storeUser,
  }) {
    final $result = create();
    if (storeUser != null) {
      $result.storeUser = storeUser;
    }
    return $result;
  }
  UpdateStoreUserRequest._() : super();
  factory UpdateStoreUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateStoreUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateStoreUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'store_user.v1'), createEmptyInstance: create)
    ..aOM<StoreUser>(1, _omitFieldNames ? '' : 'storeUser', subBuilder: StoreUser.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateStoreUserRequest clone() => UpdateStoreUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateStoreUserRequest copyWith(void Function(UpdateStoreUserRequest) updates) => super.copyWith((message) => updates(message as UpdateStoreUserRequest)) as UpdateStoreUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateStoreUserRequest create() => UpdateStoreUserRequest._();
  UpdateStoreUserRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateStoreUserRequest> createRepeated() => $pb.PbList<UpdateStoreUserRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateStoreUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateStoreUserRequest>(create);
  static UpdateStoreUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  StoreUser get storeUser => $_getN(0);
  @$pb.TagNumber(1)
  set storeUser(StoreUser v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreUser() => clearField(1);
  @$pb.TagNumber(1)
  StoreUser ensureStoreUser() => $_ensure(0);
}

class UpdateStoreUserResponse extends $pb.GeneratedMessage {
  factory UpdateStoreUserResponse({
    StoreUser? storeUser,
  }) {
    final $result = create();
    if (storeUser != null) {
      $result.storeUser = storeUser;
    }
    return $result;
  }
  UpdateStoreUserResponse._() : super();
  factory UpdateStoreUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateStoreUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateStoreUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'store_user.v1'), createEmptyInstance: create)
    ..aOM<StoreUser>(1, _omitFieldNames ? '' : 'storeUser', subBuilder: StoreUser.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateStoreUserResponse clone() => UpdateStoreUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateStoreUserResponse copyWith(void Function(UpdateStoreUserResponse) updates) => super.copyWith((message) => updates(message as UpdateStoreUserResponse)) as UpdateStoreUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateStoreUserResponse create() => UpdateStoreUserResponse._();
  UpdateStoreUserResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateStoreUserResponse> createRepeated() => $pb.PbList<UpdateStoreUserResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateStoreUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateStoreUserResponse>(create);
  static UpdateStoreUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  StoreUser get storeUser => $_getN(0);
  @$pb.TagNumber(1)
  set storeUser(StoreUser v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreUser() => clearField(1);
  @$pb.TagNumber(1)
  StoreUser ensureStoreUser() => $_ensure(0);
}

class DeleteStoreUserRequest extends $pb.GeneratedMessage {
  factory DeleteStoreUserRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteStoreUserRequest._() : super();
  factory DeleteStoreUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteStoreUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteStoreUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'store_user.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteStoreUserRequest clone() => DeleteStoreUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteStoreUserRequest copyWith(void Function(DeleteStoreUserRequest) updates) => super.copyWith((message) => updates(message as DeleteStoreUserRequest)) as DeleteStoreUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteStoreUserRequest create() => DeleteStoreUserRequest._();
  DeleteStoreUserRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteStoreUserRequest> createRepeated() => $pb.PbList<DeleteStoreUserRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteStoreUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteStoreUserRequest>(create);
  static DeleteStoreUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteStoreUserResponse extends $pb.GeneratedMessage {
  factory DeleteStoreUserResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteStoreUserResponse._() : super();
  factory DeleteStoreUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteStoreUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteStoreUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'store_user.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteStoreUserResponse clone() => DeleteStoreUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteStoreUserResponse copyWith(void Function(DeleteStoreUserResponse) updates) => super.copyWith((message) => updates(message as DeleteStoreUserResponse)) as DeleteStoreUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteStoreUserResponse create() => DeleteStoreUserResponse._();
  DeleteStoreUserResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteStoreUserResponse> createRepeated() => $pb.PbList<DeleteStoreUserResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteStoreUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteStoreUserResponse>(create);
  static DeleteStoreUserResponse? _defaultInstance;

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
