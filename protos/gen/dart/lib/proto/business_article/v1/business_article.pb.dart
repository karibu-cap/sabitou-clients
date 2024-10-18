//
//  Generated code. Do not modify.
//  source: business_article/v1/business_article.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../article/v1/article.pb.dart' as $1;
import '../../business/v1/business.pb.dart' as $3;

class BusinessArticle extends $pb.GeneratedMessage {
  factory BusinessArticle({
    $core.String? id,
    $core.String? articleId,
    $core.double? price,
    $core.String? createdAt,
    $core.String? updatedAt,
    $core.String? businessId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (articleId != null) {
      $result.articleId = articleId;
    }
    if (price != null) {
      $result.price = price;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (businessId != null) {
      $result.businessId = businessId;
    }
    return $result;
  }
  BusinessArticle._() : super();
  factory BusinessArticle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BusinessArticle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BusinessArticle', package: const $pb.PackageName(_omitMessageNames ? '' : 'business_article.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'articleId')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..aOS(4, _omitFieldNames ? '' : 'createdAt')
    ..aOS(5, _omitFieldNames ? '' : 'updatedAt')
    ..aOS(7, _omitFieldNames ? '' : 'businessId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BusinessArticle clone() => BusinessArticle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BusinessArticle copyWith(void Function(BusinessArticle) updates) => super.copyWith((message) => updates(message as BusinessArticle)) as BusinessArticle;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BusinessArticle create() => BusinessArticle._();
  BusinessArticle createEmptyInstance() => create();
  static $pb.PbList<BusinessArticle> createRepeated() => $pb.PbList<BusinessArticle>();
  @$core.pragma('dart2js:noInline')
  static BusinessArticle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BusinessArticle>(create);
  static BusinessArticle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get articleId => $_getSZ(1);
  @$pb.TagNumber(2)
  set articleId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasArticleId() => $_has(1);
  @$pb.TagNumber(2)
  void clearArticleId() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get price => $_getN(2);
  @$pb.TagNumber(3)
  set price($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrice() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get createdAt => $_getSZ(3);
  @$pb.TagNumber(4)
  set createdAt($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedAt() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get updatedAt => $_getSZ(4);
  @$pb.TagNumber(5)
  set updatedAt($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUpdatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpdatedAt() => clearField(5);

  @$pb.TagNumber(7)
  $core.String get businessId => $_getSZ(5);
  @$pb.TagNumber(7)
  set businessId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasBusinessId() => $_has(5);
  @$pb.TagNumber(7)
  void clearBusinessId() => clearField(7);
}

class CreateBusinessArticleRequest extends $pb.GeneratedMessage {
  factory CreateBusinessArticleRequest({
    BusinessArticle? businessArticle,
  }) {
    final $result = create();
    if (businessArticle != null) {
      $result.businessArticle = businessArticle;
    }
    return $result;
  }
  CreateBusinessArticleRequest._() : super();
  factory CreateBusinessArticleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateBusinessArticleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateBusinessArticleRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'business_article.v1'), createEmptyInstance: create)
    ..aOM<BusinessArticle>(1, _omitFieldNames ? '' : 'businessArticle', subBuilder: BusinessArticle.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateBusinessArticleRequest clone() => CreateBusinessArticleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateBusinessArticleRequest copyWith(void Function(CreateBusinessArticleRequest) updates) => super.copyWith((message) => updates(message as CreateBusinessArticleRequest)) as CreateBusinessArticleRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateBusinessArticleRequest create() => CreateBusinessArticleRequest._();
  CreateBusinessArticleRequest createEmptyInstance() => create();
  static $pb.PbList<CreateBusinessArticleRequest> createRepeated() => $pb.PbList<CreateBusinessArticleRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateBusinessArticleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateBusinessArticleRequest>(create);
  static CreateBusinessArticleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  BusinessArticle get businessArticle => $_getN(0);
  @$pb.TagNumber(1)
  set businessArticle(BusinessArticle v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBusinessArticle() => $_has(0);
  @$pb.TagNumber(1)
  void clearBusinessArticle() => clearField(1);
  @$pb.TagNumber(1)
  BusinessArticle ensureBusinessArticle() => $_ensure(0);
}

class CreateBusinessArticleResponse extends $pb.GeneratedMessage {
  factory CreateBusinessArticleResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CreateBusinessArticleResponse._() : super();
  factory CreateBusinessArticleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateBusinessArticleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateBusinessArticleResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'business_article.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateBusinessArticleResponse clone() => CreateBusinessArticleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateBusinessArticleResponse copyWith(void Function(CreateBusinessArticleResponse) updates) => super.copyWith((message) => updates(message as CreateBusinessArticleResponse)) as CreateBusinessArticleResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateBusinessArticleResponse create() => CreateBusinessArticleResponse._();
  CreateBusinessArticleResponse createEmptyInstance() => create();
  static $pb.PbList<CreateBusinessArticleResponse> createRepeated() => $pb.PbList<CreateBusinessArticleResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateBusinessArticleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateBusinessArticleResponse>(create);
  static CreateBusinessArticleResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetBusinessArticleRequest extends $pb.GeneratedMessage {
  factory GetBusinessArticleRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetBusinessArticleRequest._() : super();
  factory GetBusinessArticleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBusinessArticleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBusinessArticleRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'business_article.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBusinessArticleRequest clone() => GetBusinessArticleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBusinessArticleRequest copyWith(void Function(GetBusinessArticleRequest) updates) => super.copyWith((message) => updates(message as GetBusinessArticleRequest)) as GetBusinessArticleRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBusinessArticleRequest create() => GetBusinessArticleRequest._();
  GetBusinessArticleRequest createEmptyInstance() => create();
  static $pb.PbList<GetBusinessArticleRequest> createRepeated() => $pb.PbList<GetBusinessArticleRequest>();
  @$core.pragma('dart2js:noInline')
  static GetBusinessArticleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBusinessArticleRequest>(create);
  static GetBusinessArticleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetBusinessArticleResponse extends $pb.GeneratedMessage {
  factory GetBusinessArticleResponse({
    $core.String? id,
    $1.Article? article,
    $core.double? price,
    $core.String? createdAt,
    $core.String? updatedAt,
    $3.Business? business,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (article != null) {
      $result.article = article;
    }
    if (price != null) {
      $result.price = price;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (business != null) {
      $result.business = business;
    }
    return $result;
  }
  GetBusinessArticleResponse._() : super();
  factory GetBusinessArticleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBusinessArticleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBusinessArticleResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'business_article.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$1.Article>(2, _omitFieldNames ? '' : 'article', subBuilder: $1.Article.create)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..aOS(4, _omitFieldNames ? '' : 'createdAt')
    ..aOS(5, _omitFieldNames ? '' : 'updatedAt')
    ..aOM<$3.Business>(7, _omitFieldNames ? '' : 'business', subBuilder: $3.Business.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBusinessArticleResponse clone() => GetBusinessArticleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBusinessArticleResponse copyWith(void Function(GetBusinessArticleResponse) updates) => super.copyWith((message) => updates(message as GetBusinessArticleResponse)) as GetBusinessArticleResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBusinessArticleResponse create() => GetBusinessArticleResponse._();
  GetBusinessArticleResponse createEmptyInstance() => create();
  static $pb.PbList<GetBusinessArticleResponse> createRepeated() => $pb.PbList<GetBusinessArticleResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBusinessArticleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBusinessArticleResponse>(create);
  static GetBusinessArticleResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $1.Article get article => $_getN(1);
  @$pb.TagNumber(2)
  set article($1.Article v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasArticle() => $_has(1);
  @$pb.TagNumber(2)
  void clearArticle() => clearField(2);
  @$pb.TagNumber(2)
  $1.Article ensureArticle() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.double get price => $_getN(2);
  @$pb.TagNumber(3)
  set price($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrice() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get createdAt => $_getSZ(3);
  @$pb.TagNumber(4)
  set createdAt($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedAt() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get updatedAt => $_getSZ(4);
  @$pb.TagNumber(5)
  set updatedAt($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUpdatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpdatedAt() => clearField(5);

  @$pb.TagNumber(7)
  $3.Business get business => $_getN(5);
  @$pb.TagNumber(7)
  set business($3.Business v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasBusiness() => $_has(5);
  @$pb.TagNumber(7)
  void clearBusiness() => clearField(7);
  @$pb.TagNumber(7)
  $3.Business ensureBusiness() => $_ensure(5);
}

class UpdateBusinessArticleRequest extends $pb.GeneratedMessage {
  factory UpdateBusinessArticleRequest({
    BusinessArticle? businessArticle,
  }) {
    final $result = create();
    if (businessArticle != null) {
      $result.businessArticle = businessArticle;
    }
    return $result;
  }
  UpdateBusinessArticleRequest._() : super();
  factory UpdateBusinessArticleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateBusinessArticleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateBusinessArticleRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'business_article.v1'), createEmptyInstance: create)
    ..aOM<BusinessArticle>(1, _omitFieldNames ? '' : 'businessArticle', subBuilder: BusinessArticle.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateBusinessArticleRequest clone() => UpdateBusinessArticleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateBusinessArticleRequest copyWith(void Function(UpdateBusinessArticleRequest) updates) => super.copyWith((message) => updates(message as UpdateBusinessArticleRequest)) as UpdateBusinessArticleRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateBusinessArticleRequest create() => UpdateBusinessArticleRequest._();
  UpdateBusinessArticleRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateBusinessArticleRequest> createRepeated() => $pb.PbList<UpdateBusinessArticleRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateBusinessArticleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateBusinessArticleRequest>(create);
  static UpdateBusinessArticleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  BusinessArticle get businessArticle => $_getN(0);
  @$pb.TagNumber(1)
  set businessArticle(BusinessArticle v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBusinessArticle() => $_has(0);
  @$pb.TagNumber(1)
  void clearBusinessArticle() => clearField(1);
  @$pb.TagNumber(1)
  BusinessArticle ensureBusinessArticle() => $_ensure(0);
}

class UpdateBusinessArticleResponse extends $pb.GeneratedMessage {
  factory UpdateBusinessArticleResponse({
    BusinessArticle? businessArticle,
  }) {
    final $result = create();
    if (businessArticle != null) {
      $result.businessArticle = businessArticle;
    }
    return $result;
  }
  UpdateBusinessArticleResponse._() : super();
  factory UpdateBusinessArticleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateBusinessArticleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateBusinessArticleResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'business_article.v1'), createEmptyInstance: create)
    ..aOM<BusinessArticle>(1, _omitFieldNames ? '' : 'businessArticle', subBuilder: BusinessArticle.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateBusinessArticleResponse clone() => UpdateBusinessArticleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateBusinessArticleResponse copyWith(void Function(UpdateBusinessArticleResponse) updates) => super.copyWith((message) => updates(message as UpdateBusinessArticleResponse)) as UpdateBusinessArticleResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateBusinessArticleResponse create() => UpdateBusinessArticleResponse._();
  UpdateBusinessArticleResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateBusinessArticleResponse> createRepeated() => $pb.PbList<UpdateBusinessArticleResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateBusinessArticleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateBusinessArticleResponse>(create);
  static UpdateBusinessArticleResponse? _defaultInstance;

  @$pb.TagNumber(1)
  BusinessArticle get businessArticle => $_getN(0);
  @$pb.TagNumber(1)
  set businessArticle(BusinessArticle v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBusinessArticle() => $_has(0);
  @$pb.TagNumber(1)
  void clearBusinessArticle() => clearField(1);
  @$pb.TagNumber(1)
  BusinessArticle ensureBusinessArticle() => $_ensure(0);
}

class DeleteBusinessArticleRequest extends $pb.GeneratedMessage {
  factory DeleteBusinessArticleRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteBusinessArticleRequest._() : super();
  factory DeleteBusinessArticleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteBusinessArticleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteBusinessArticleRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'business_article.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteBusinessArticleRequest clone() => DeleteBusinessArticleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteBusinessArticleRequest copyWith(void Function(DeleteBusinessArticleRequest) updates) => super.copyWith((message) => updates(message as DeleteBusinessArticleRequest)) as DeleteBusinessArticleRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteBusinessArticleRequest create() => DeleteBusinessArticleRequest._();
  DeleteBusinessArticleRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteBusinessArticleRequest> createRepeated() => $pb.PbList<DeleteBusinessArticleRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteBusinessArticleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteBusinessArticleRequest>(create);
  static DeleteBusinessArticleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteBusinessArticleResponse extends $pb.GeneratedMessage {
  factory DeleteBusinessArticleResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteBusinessArticleResponse._() : super();
  factory DeleteBusinessArticleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteBusinessArticleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteBusinessArticleResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'business_article.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteBusinessArticleResponse clone() => DeleteBusinessArticleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteBusinessArticleResponse copyWith(void Function(DeleteBusinessArticleResponse) updates) => super.copyWith((message) => updates(message as DeleteBusinessArticleResponse)) as DeleteBusinessArticleResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteBusinessArticleResponse create() => DeleteBusinessArticleResponse._();
  DeleteBusinessArticleResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteBusinessArticleResponse> createRepeated() => $pb.PbList<DeleteBusinessArticleResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteBusinessArticleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteBusinessArticleResponse>(create);
  static DeleteBusinessArticleResponse? _defaultInstance;

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
