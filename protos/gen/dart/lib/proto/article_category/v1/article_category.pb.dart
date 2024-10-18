//
//  Generated code. Do not modify.
//  source: article_category/v1/article_category.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ArticleCategory extends $pb.GeneratedMessage {
  factory ArticleCategory({
    $core.String? id,
    $core.String? name,
    $core.String? description,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  ArticleCategory._() : super();
  factory ArticleCategory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ArticleCategory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ArticleCategory', package: const $pb.PackageName(_omitMessageNames ? '' : 'article_category.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ArticleCategory clone() => ArticleCategory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ArticleCategory copyWith(void Function(ArticleCategory) updates) => super.copyWith((message) => updates(message as ArticleCategory)) as ArticleCategory;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ArticleCategory create() => ArticleCategory._();
  ArticleCategory createEmptyInstance() => create();
  static $pb.PbList<ArticleCategory> createRepeated() => $pb.PbList<ArticleCategory>();
  @$core.pragma('dart2js:noInline')
  static ArticleCategory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ArticleCategory>(create);
  static ArticleCategory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);
}

class CreateArticleCategoryRequest extends $pb.GeneratedMessage {
  factory CreateArticleCategoryRequest({
    ArticleCategory? articleCategory,
  }) {
    final $result = create();
    if (articleCategory != null) {
      $result.articleCategory = articleCategory;
    }
    return $result;
  }
  CreateArticleCategoryRequest._() : super();
  factory CreateArticleCategoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateArticleCategoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateArticleCategoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'article_category.v1'), createEmptyInstance: create)
    ..aOM<ArticleCategory>(1, _omitFieldNames ? '' : 'articleCategory', subBuilder: ArticleCategory.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateArticleCategoryRequest clone() => CreateArticleCategoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateArticleCategoryRequest copyWith(void Function(CreateArticleCategoryRequest) updates) => super.copyWith((message) => updates(message as CreateArticleCategoryRequest)) as CreateArticleCategoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateArticleCategoryRequest create() => CreateArticleCategoryRequest._();
  CreateArticleCategoryRequest createEmptyInstance() => create();
  static $pb.PbList<CreateArticleCategoryRequest> createRepeated() => $pb.PbList<CreateArticleCategoryRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateArticleCategoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateArticleCategoryRequest>(create);
  static CreateArticleCategoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  ArticleCategory get articleCategory => $_getN(0);
  @$pb.TagNumber(1)
  set articleCategory(ArticleCategory v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasArticleCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearArticleCategory() => clearField(1);
  @$pb.TagNumber(1)
  ArticleCategory ensureArticleCategory() => $_ensure(0);
}

class CreateArticleCategoryResponse extends $pb.GeneratedMessage {
  factory CreateArticleCategoryResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CreateArticleCategoryResponse._() : super();
  factory CreateArticleCategoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateArticleCategoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateArticleCategoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'article_category.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateArticleCategoryResponse clone() => CreateArticleCategoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateArticleCategoryResponse copyWith(void Function(CreateArticleCategoryResponse) updates) => super.copyWith((message) => updates(message as CreateArticleCategoryResponse)) as CreateArticleCategoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateArticleCategoryResponse create() => CreateArticleCategoryResponse._();
  CreateArticleCategoryResponse createEmptyInstance() => create();
  static $pb.PbList<CreateArticleCategoryResponse> createRepeated() => $pb.PbList<CreateArticleCategoryResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateArticleCategoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateArticleCategoryResponse>(create);
  static CreateArticleCategoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetArticleCategoryRequest extends $pb.GeneratedMessage {
  factory GetArticleCategoryRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetArticleCategoryRequest._() : super();
  factory GetArticleCategoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetArticleCategoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetArticleCategoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'article_category.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetArticleCategoryRequest clone() => GetArticleCategoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetArticleCategoryRequest copyWith(void Function(GetArticleCategoryRequest) updates) => super.copyWith((message) => updates(message as GetArticleCategoryRequest)) as GetArticleCategoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetArticleCategoryRequest create() => GetArticleCategoryRequest._();
  GetArticleCategoryRequest createEmptyInstance() => create();
  static $pb.PbList<GetArticleCategoryRequest> createRepeated() => $pb.PbList<GetArticleCategoryRequest>();
  @$core.pragma('dart2js:noInline')
  static GetArticleCategoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetArticleCategoryRequest>(create);
  static GetArticleCategoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetArticleCategoryResponse extends $pb.GeneratedMessage {
  factory GetArticleCategoryResponse({
    ArticleCategory? articleCategory,
  }) {
    final $result = create();
    if (articleCategory != null) {
      $result.articleCategory = articleCategory;
    }
    return $result;
  }
  GetArticleCategoryResponse._() : super();
  factory GetArticleCategoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetArticleCategoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetArticleCategoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'article_category.v1'), createEmptyInstance: create)
    ..aOM<ArticleCategory>(1, _omitFieldNames ? '' : 'articleCategory', subBuilder: ArticleCategory.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetArticleCategoryResponse clone() => GetArticleCategoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetArticleCategoryResponse copyWith(void Function(GetArticleCategoryResponse) updates) => super.copyWith((message) => updates(message as GetArticleCategoryResponse)) as GetArticleCategoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetArticleCategoryResponse create() => GetArticleCategoryResponse._();
  GetArticleCategoryResponse createEmptyInstance() => create();
  static $pb.PbList<GetArticleCategoryResponse> createRepeated() => $pb.PbList<GetArticleCategoryResponse>();
  @$core.pragma('dart2js:noInline')
  static GetArticleCategoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetArticleCategoryResponse>(create);
  static GetArticleCategoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ArticleCategory get articleCategory => $_getN(0);
  @$pb.TagNumber(1)
  set articleCategory(ArticleCategory v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasArticleCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearArticleCategory() => clearField(1);
  @$pb.TagNumber(1)
  ArticleCategory ensureArticleCategory() => $_ensure(0);
}

class UpdateArticleCategoryRequest extends $pb.GeneratedMessage {
  factory UpdateArticleCategoryRequest({
    ArticleCategory? articleCategory,
  }) {
    final $result = create();
    if (articleCategory != null) {
      $result.articleCategory = articleCategory;
    }
    return $result;
  }
  UpdateArticleCategoryRequest._() : super();
  factory UpdateArticleCategoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateArticleCategoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateArticleCategoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'article_category.v1'), createEmptyInstance: create)
    ..aOM<ArticleCategory>(1, _omitFieldNames ? '' : 'articleCategory', subBuilder: ArticleCategory.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateArticleCategoryRequest clone() => UpdateArticleCategoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateArticleCategoryRequest copyWith(void Function(UpdateArticleCategoryRequest) updates) => super.copyWith((message) => updates(message as UpdateArticleCategoryRequest)) as UpdateArticleCategoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateArticleCategoryRequest create() => UpdateArticleCategoryRequest._();
  UpdateArticleCategoryRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateArticleCategoryRequest> createRepeated() => $pb.PbList<UpdateArticleCategoryRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateArticleCategoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateArticleCategoryRequest>(create);
  static UpdateArticleCategoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  ArticleCategory get articleCategory => $_getN(0);
  @$pb.TagNumber(1)
  set articleCategory(ArticleCategory v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasArticleCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearArticleCategory() => clearField(1);
  @$pb.TagNumber(1)
  ArticleCategory ensureArticleCategory() => $_ensure(0);
}

class UpdateArticleCategoryResponse extends $pb.GeneratedMessage {
  factory UpdateArticleCategoryResponse({
    ArticleCategory? articleCategory,
  }) {
    final $result = create();
    if (articleCategory != null) {
      $result.articleCategory = articleCategory;
    }
    return $result;
  }
  UpdateArticleCategoryResponse._() : super();
  factory UpdateArticleCategoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateArticleCategoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateArticleCategoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'article_category.v1'), createEmptyInstance: create)
    ..aOM<ArticleCategory>(1, _omitFieldNames ? '' : 'articleCategory', subBuilder: ArticleCategory.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateArticleCategoryResponse clone() => UpdateArticleCategoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateArticleCategoryResponse copyWith(void Function(UpdateArticleCategoryResponse) updates) => super.copyWith((message) => updates(message as UpdateArticleCategoryResponse)) as UpdateArticleCategoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateArticleCategoryResponse create() => UpdateArticleCategoryResponse._();
  UpdateArticleCategoryResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateArticleCategoryResponse> createRepeated() => $pb.PbList<UpdateArticleCategoryResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateArticleCategoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateArticleCategoryResponse>(create);
  static UpdateArticleCategoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ArticleCategory get articleCategory => $_getN(0);
  @$pb.TagNumber(1)
  set articleCategory(ArticleCategory v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasArticleCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearArticleCategory() => clearField(1);
  @$pb.TagNumber(1)
  ArticleCategory ensureArticleCategory() => $_ensure(0);
}

class DeleteArticleCategoryRequest extends $pb.GeneratedMessage {
  factory DeleteArticleCategoryRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteArticleCategoryRequest._() : super();
  factory DeleteArticleCategoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteArticleCategoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteArticleCategoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'article_category.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteArticleCategoryRequest clone() => DeleteArticleCategoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteArticleCategoryRequest copyWith(void Function(DeleteArticleCategoryRequest) updates) => super.copyWith((message) => updates(message as DeleteArticleCategoryRequest)) as DeleteArticleCategoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteArticleCategoryRequest create() => DeleteArticleCategoryRequest._();
  DeleteArticleCategoryRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteArticleCategoryRequest> createRepeated() => $pb.PbList<DeleteArticleCategoryRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteArticleCategoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteArticleCategoryRequest>(create);
  static DeleteArticleCategoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteArticleCategoryResponse extends $pb.GeneratedMessage {
  factory DeleteArticleCategoryResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteArticleCategoryResponse._() : super();
  factory DeleteArticleCategoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteArticleCategoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteArticleCategoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'article_category.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteArticleCategoryResponse clone() => DeleteArticleCategoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteArticleCategoryResponse copyWith(void Function(DeleteArticleCategoryResponse) updates) => super.copyWith((message) => updates(message as DeleteArticleCategoryResponse)) as DeleteArticleCategoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteArticleCategoryResponse create() => DeleteArticleCategoryResponse._();
  DeleteArticleCategoryResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteArticleCategoryResponse> createRepeated() => $pb.PbList<DeleteArticleCategoryResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteArticleCategoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteArticleCategoryResponse>(create);
  static DeleteArticleCategoryResponse? _defaultInstance;

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
