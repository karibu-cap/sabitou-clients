//
//  Generated code. Do not modify.
//  source: article/v1/article.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../media/v1/media.pb.dart' as $0;

class Article extends $pb.GeneratedMessage {
  factory Article({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.String? barCodeValue,
    $core.Iterable<$core.String>? images,
    $core.String? createdAt,
    $core.String? updatedAt,
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
    if (barCodeValue != null) {
      $result.barCodeValue = barCodeValue;
    }
    if (images != null) {
      $result.images.addAll(images);
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    return $result;
  }
  Article._() : super();
  factory Article.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Article.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Article', package: const $pb.PackageName(_omitMessageNames ? '' : 'article.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'barCodeValue')
    ..pPS(5, _omitFieldNames ? '' : 'images')
    ..aOS(6, _omitFieldNames ? '' : 'createdAt')
    ..aOS(7, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Article clone() => Article()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Article copyWith(void Function(Article) updates) => super.copyWith((message) => updates(message as Article)) as Article;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Article create() => Article._();
  Article createEmptyInstance() => create();
  static $pb.PbList<Article> createRepeated() => $pb.PbList<Article>();
  @$core.pragma('dart2js:noInline')
  static Article getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Article>(create);
  static Article? _defaultInstance;

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

  @$pb.TagNumber(4)
  $core.String get barCodeValue => $_getSZ(3);
  @$pb.TagNumber(4)
  set barCodeValue($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBarCodeValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearBarCodeValue() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get images => $_getList(4);

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

class GetArticleRequest extends $pb.GeneratedMessage {
  factory GetArticleRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetArticleRequest._() : super();
  factory GetArticleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetArticleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetArticleRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'article.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetArticleRequest clone() => GetArticleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetArticleRequest copyWith(void Function(GetArticleRequest) updates) => super.copyWith((message) => updates(message as GetArticleRequest)) as GetArticleRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetArticleRequest create() => GetArticleRequest._();
  GetArticleRequest createEmptyInstance() => create();
  static $pb.PbList<GetArticleRequest> createRepeated() => $pb.PbList<GetArticleRequest>();
  @$core.pragma('dart2js:noInline')
  static GetArticleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetArticleRequest>(create);
  static GetArticleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetArticleResponse extends $pb.GeneratedMessage {
  factory GetArticleResponse({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.String? barCodeValue,
    $core.Iterable<$0.Media>? images,
    $core.String? createdAt,
    $core.String? updatedAt,
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
    if (barCodeValue != null) {
      $result.barCodeValue = barCodeValue;
    }
    if (images != null) {
      $result.images.addAll(images);
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    return $result;
  }
  GetArticleResponse._() : super();
  factory GetArticleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetArticleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetArticleResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'article.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'barCodeValue')
    ..pc<$0.Media>(5, _omitFieldNames ? '' : 'images', $pb.PbFieldType.PM, subBuilder: $0.Media.create)
    ..aOS(6, _omitFieldNames ? '' : 'createdAt')
    ..aOS(7, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetArticleResponse clone() => GetArticleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetArticleResponse copyWith(void Function(GetArticleResponse) updates) => super.copyWith((message) => updates(message as GetArticleResponse)) as GetArticleResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetArticleResponse create() => GetArticleResponse._();
  GetArticleResponse createEmptyInstance() => create();
  static $pb.PbList<GetArticleResponse> createRepeated() => $pb.PbList<GetArticleResponse>();
  @$core.pragma('dart2js:noInline')
  static GetArticleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetArticleResponse>(create);
  static GetArticleResponse? _defaultInstance;

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

  @$pb.TagNumber(4)
  $core.String get barCodeValue => $_getSZ(3);
  @$pb.TagNumber(4)
  set barCodeValue($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBarCodeValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearBarCodeValue() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$0.Media> get images => $_getList(4);

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

class CreateArticleRequest extends $pb.GeneratedMessage {
  factory CreateArticleRequest({
    Article? article,
  }) {
    final $result = create();
    if (article != null) {
      $result.article = article;
    }
    return $result;
  }
  CreateArticleRequest._() : super();
  factory CreateArticleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateArticleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateArticleRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'article.v1'), createEmptyInstance: create)
    ..aOM<Article>(1, _omitFieldNames ? '' : 'article', subBuilder: Article.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateArticleRequest clone() => CreateArticleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateArticleRequest copyWith(void Function(CreateArticleRequest) updates) => super.copyWith((message) => updates(message as CreateArticleRequest)) as CreateArticleRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateArticleRequest create() => CreateArticleRequest._();
  CreateArticleRequest createEmptyInstance() => create();
  static $pb.PbList<CreateArticleRequest> createRepeated() => $pb.PbList<CreateArticleRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateArticleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateArticleRequest>(create);
  static CreateArticleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Article get article => $_getN(0);
  @$pb.TagNumber(1)
  set article(Article v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasArticle() => $_has(0);
  @$pb.TagNumber(1)
  void clearArticle() => clearField(1);
  @$pb.TagNumber(1)
  Article ensureArticle() => $_ensure(0);
}

class UpdateArticleRequest extends $pb.GeneratedMessage {
  factory UpdateArticleRequest({
    Article? article,
  }) {
    final $result = create();
    if (article != null) {
      $result.article = article;
    }
    return $result;
  }
  UpdateArticleRequest._() : super();
  factory UpdateArticleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateArticleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateArticleRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'article.v1'), createEmptyInstance: create)
    ..aOM<Article>(1, _omitFieldNames ? '' : 'article', subBuilder: Article.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateArticleRequest clone() => UpdateArticleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateArticleRequest copyWith(void Function(UpdateArticleRequest) updates) => super.copyWith((message) => updates(message as UpdateArticleRequest)) as UpdateArticleRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateArticleRequest create() => UpdateArticleRequest._();
  UpdateArticleRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateArticleRequest> createRepeated() => $pb.PbList<UpdateArticleRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateArticleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateArticleRequest>(create);
  static UpdateArticleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Article get article => $_getN(0);
  @$pb.TagNumber(1)
  set article(Article v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasArticle() => $_has(0);
  @$pb.TagNumber(1)
  void clearArticle() => clearField(1);
  @$pb.TagNumber(1)
  Article ensureArticle() => $_ensure(0);
}

class DeleteArticleRequest extends $pb.GeneratedMessage {
  factory DeleteArticleRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteArticleRequest._() : super();
  factory DeleteArticleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteArticleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteArticleRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'article.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteArticleRequest clone() => DeleteArticleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteArticleRequest copyWith(void Function(DeleteArticleRequest) updates) => super.copyWith((message) => updates(message as DeleteArticleRequest)) as DeleteArticleRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteArticleRequest create() => DeleteArticleRequest._();
  DeleteArticleRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteArticleRequest> createRepeated() => $pb.PbList<DeleteArticleRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteArticleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteArticleRequest>(create);
  static DeleteArticleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteArticleResponse extends $pb.GeneratedMessage {
  factory DeleteArticleResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteArticleResponse._() : super();
  factory DeleteArticleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteArticleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteArticleResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'article.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteArticleResponse clone() => DeleteArticleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteArticleResponse copyWith(void Function(DeleteArticleResponse) updates) => super.copyWith((message) => updates(message as DeleteArticleResponse)) as DeleteArticleResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteArticleResponse create() => DeleteArticleResponse._();
  DeleteArticleResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteArticleResponse> createRepeated() => $pb.PbList<DeleteArticleResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteArticleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteArticleResponse>(create);
  static DeleteArticleResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class CreateArticleResponse extends $pb.GeneratedMessage {
  factory CreateArticleResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CreateArticleResponse._() : super();
  factory CreateArticleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateArticleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateArticleResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'article.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateArticleResponse clone() => CreateArticleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateArticleResponse copyWith(void Function(CreateArticleResponse) updates) => super.copyWith((message) => updates(message as CreateArticleResponse)) as CreateArticleResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateArticleResponse create() => CreateArticleResponse._();
  CreateArticleResponse createEmptyInstance() => create();
  static $pb.PbList<CreateArticleResponse> createRepeated() => $pb.PbList<CreateArticleResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateArticleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateArticleResponse>(create);
  static CreateArticleResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class UpdateArticleResponse extends $pb.GeneratedMessage {
  factory UpdateArticleResponse({
    Article? article,
  }) {
    final $result = create();
    if (article != null) {
      $result.article = article;
    }
    return $result;
  }
  UpdateArticleResponse._() : super();
  factory UpdateArticleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateArticleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateArticleResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'article.v1'), createEmptyInstance: create)
    ..aOM<Article>(1, _omitFieldNames ? '' : 'article', subBuilder: Article.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateArticleResponse clone() => UpdateArticleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateArticleResponse copyWith(void Function(UpdateArticleResponse) updates) => super.copyWith((message) => updates(message as UpdateArticleResponse)) as UpdateArticleResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateArticleResponse create() => UpdateArticleResponse._();
  UpdateArticleResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateArticleResponse> createRepeated() => $pb.PbList<UpdateArticleResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateArticleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateArticleResponse>(create);
  static UpdateArticleResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Article get article => $_getN(0);
  @$pb.TagNumber(1)
  set article(Article v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasArticle() => $_has(0);
  @$pb.TagNumber(1)
  void clearArticle() => clearField(1);
  @$pb.TagNumber(1)
  Article ensureArticle() => $_ensure(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
