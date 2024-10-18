//
//  Generated code. Do not modify.
//  source: inventory/v1/inventory.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../article/v1/article.pb.dart' as $1;
import '../../article_category/v1/article_category.pb.dart' as $2;
import '../../media/v1/media.pb.dart' as $0;
import '../../store/v1/store.pb.dart' as $7;

class Inventory extends $pb.GeneratedMessage {
  factory Inventory({
    $core.String? id,
    $core.String? articleId,
    $core.double? quantity,
    $core.Iterable<$core.String>? categories,
    $core.double? price,
    $core.Iterable<$core.String>? images,
    $core.String? createdAt,
    $core.String? updatedAt,
    $core.String? storeId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (articleId != null) {
      $result.articleId = articleId;
    }
    if (quantity != null) {
      $result.quantity = quantity;
    }
    if (categories != null) {
      $result.categories.addAll(categories);
    }
    if (price != null) {
      $result.price = price;
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
    if (storeId != null) {
      $result.storeId = storeId;
    }
    return $result;
  }
  Inventory._() : super();
  factory Inventory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Inventory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Inventory', package: const $pb.PackageName(_omitMessageNames ? '' : 'inventory.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'articleId')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'quantity', $pb.PbFieldType.OD)
    ..pPS(4, _omitFieldNames ? '' : 'categories')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..pPS(6, _omitFieldNames ? '' : 'images')
    ..aOS(7, _omitFieldNames ? '' : 'createdAt')
    ..aOS(8, _omitFieldNames ? '' : 'updatedAt')
    ..aOS(9, _omitFieldNames ? '' : 'storeId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Inventory clone() => Inventory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Inventory copyWith(void Function(Inventory) updates) => super.copyWith((message) => updates(message as Inventory)) as Inventory;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Inventory create() => Inventory._();
  Inventory createEmptyInstance() => create();
  static $pb.PbList<Inventory> createRepeated() => $pb.PbList<Inventory>();
  @$core.pragma('dart2js:noInline')
  static Inventory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Inventory>(create);
  static Inventory? _defaultInstance;

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
  $core.double get quantity => $_getN(2);
  @$pb.TagNumber(3)
  set quantity($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuantity() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuantity() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get categories => $_getList(3);

  @$pb.TagNumber(5)
  $core.double get price => $_getN(4);
  @$pb.TagNumber(5)
  set price($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get images => $_getList(5);

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

  @$pb.TagNumber(9)
  $core.String get storeId => $_getSZ(8);
  @$pb.TagNumber(9)
  set storeId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasStoreId() => $_has(8);
  @$pb.TagNumber(9)
  void clearStoreId() => clearField(9);
}

class CreateInventoryRequest extends $pb.GeneratedMessage {
  factory CreateInventoryRequest({
    Inventory? inventory,
  }) {
    final $result = create();
    if (inventory != null) {
      $result.inventory = inventory;
    }
    return $result;
  }
  CreateInventoryRequest._() : super();
  factory CreateInventoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateInventoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateInventoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'inventory.v1'), createEmptyInstance: create)
    ..aOM<Inventory>(1, _omitFieldNames ? '' : 'inventory', subBuilder: Inventory.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateInventoryRequest clone() => CreateInventoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateInventoryRequest copyWith(void Function(CreateInventoryRequest) updates) => super.copyWith((message) => updates(message as CreateInventoryRequest)) as CreateInventoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateInventoryRequest create() => CreateInventoryRequest._();
  CreateInventoryRequest createEmptyInstance() => create();
  static $pb.PbList<CreateInventoryRequest> createRepeated() => $pb.PbList<CreateInventoryRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateInventoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateInventoryRequest>(create);
  static CreateInventoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Inventory get inventory => $_getN(0);
  @$pb.TagNumber(1)
  set inventory(Inventory v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInventory() => $_has(0);
  @$pb.TagNumber(1)
  void clearInventory() => clearField(1);
  @$pb.TagNumber(1)
  Inventory ensureInventory() => $_ensure(0);
}

class CreateInventoryResponse extends $pb.GeneratedMessage {
  factory CreateInventoryResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CreateInventoryResponse._() : super();
  factory CreateInventoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateInventoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateInventoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'inventory.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateInventoryResponse clone() => CreateInventoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateInventoryResponse copyWith(void Function(CreateInventoryResponse) updates) => super.copyWith((message) => updates(message as CreateInventoryResponse)) as CreateInventoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateInventoryResponse create() => CreateInventoryResponse._();
  CreateInventoryResponse createEmptyInstance() => create();
  static $pb.PbList<CreateInventoryResponse> createRepeated() => $pb.PbList<CreateInventoryResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateInventoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateInventoryResponse>(create);
  static CreateInventoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetInventoryRequest extends $pb.GeneratedMessage {
  factory GetInventoryRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetInventoryRequest._() : super();
  factory GetInventoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInventoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetInventoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'inventory.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInventoryRequest clone() => GetInventoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInventoryRequest copyWith(void Function(GetInventoryRequest) updates) => super.copyWith((message) => updates(message as GetInventoryRequest)) as GetInventoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetInventoryRequest create() => GetInventoryRequest._();
  GetInventoryRequest createEmptyInstance() => create();
  static $pb.PbList<GetInventoryRequest> createRepeated() => $pb.PbList<GetInventoryRequest>();
  @$core.pragma('dart2js:noInline')
  static GetInventoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInventoryRequest>(create);
  static GetInventoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetInventoryResponse extends $pb.GeneratedMessage {
  factory GetInventoryResponse({
    $core.String? id,
    $1.Article? article,
    $core.String? quantity,
    $core.Iterable<$2.ArticleCategory>? categories,
    $core.double? price,
    $core.Iterable<$0.Media>? images,
    $core.String? createdAt,
    $core.String? updatedAt,
    $7.Store? store,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (article != null) {
      $result.article = article;
    }
    if (quantity != null) {
      $result.quantity = quantity;
    }
    if (categories != null) {
      $result.categories.addAll(categories);
    }
    if (price != null) {
      $result.price = price;
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
    if (store != null) {
      $result.store = store;
    }
    return $result;
  }
  GetInventoryResponse._() : super();
  factory GetInventoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInventoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetInventoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'inventory.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$1.Article>(2, _omitFieldNames ? '' : 'article', subBuilder: $1.Article.create)
    ..aOS(3, _omitFieldNames ? '' : 'quantity')
    ..pc<$2.ArticleCategory>(4, _omitFieldNames ? '' : 'categories', $pb.PbFieldType.PM, subBuilder: $2.ArticleCategory.create)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..pc<$0.Media>(6, _omitFieldNames ? '' : 'images', $pb.PbFieldType.PM, subBuilder: $0.Media.create)
    ..aOS(7, _omitFieldNames ? '' : 'createdAt')
    ..aOS(8, _omitFieldNames ? '' : 'updatedAt')
    ..aOM<$7.Store>(9, _omitFieldNames ? '' : 'store', subBuilder: $7.Store.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInventoryResponse clone() => GetInventoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInventoryResponse copyWith(void Function(GetInventoryResponse) updates) => super.copyWith((message) => updates(message as GetInventoryResponse)) as GetInventoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetInventoryResponse create() => GetInventoryResponse._();
  GetInventoryResponse createEmptyInstance() => create();
  static $pb.PbList<GetInventoryResponse> createRepeated() => $pb.PbList<GetInventoryResponse>();
  @$core.pragma('dart2js:noInline')
  static GetInventoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInventoryResponse>(create);
  static GetInventoryResponse? _defaultInstance;

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
  $core.String get quantity => $_getSZ(2);
  @$pb.TagNumber(3)
  set quantity($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuantity() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuantity() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$2.ArticleCategory> get categories => $_getList(3);

  @$pb.TagNumber(5)
  $core.double get price => $_getN(4);
  @$pb.TagNumber(5)
  set price($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$0.Media> get images => $_getList(5);

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

  @$pb.TagNumber(9)
  $7.Store get store => $_getN(8);
  @$pb.TagNumber(9)
  set store($7.Store v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasStore() => $_has(8);
  @$pb.TagNumber(9)
  void clearStore() => clearField(9);
  @$pb.TagNumber(9)
  $7.Store ensureStore() => $_ensure(8);
}

class UpdateInventoryRequest extends $pb.GeneratedMessage {
  factory UpdateInventoryRequest({
    Inventory? inventory,
  }) {
    final $result = create();
    if (inventory != null) {
      $result.inventory = inventory;
    }
    return $result;
  }
  UpdateInventoryRequest._() : super();
  factory UpdateInventoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateInventoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateInventoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'inventory.v1'), createEmptyInstance: create)
    ..aOM<Inventory>(1, _omitFieldNames ? '' : 'inventory', subBuilder: Inventory.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateInventoryRequest clone() => UpdateInventoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateInventoryRequest copyWith(void Function(UpdateInventoryRequest) updates) => super.copyWith((message) => updates(message as UpdateInventoryRequest)) as UpdateInventoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateInventoryRequest create() => UpdateInventoryRequest._();
  UpdateInventoryRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateInventoryRequest> createRepeated() => $pb.PbList<UpdateInventoryRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateInventoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateInventoryRequest>(create);
  static UpdateInventoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Inventory get inventory => $_getN(0);
  @$pb.TagNumber(1)
  set inventory(Inventory v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInventory() => $_has(0);
  @$pb.TagNumber(1)
  void clearInventory() => clearField(1);
  @$pb.TagNumber(1)
  Inventory ensureInventory() => $_ensure(0);
}

class UpdateInventoryResponse extends $pb.GeneratedMessage {
  factory UpdateInventoryResponse({
    Inventory? inventory,
  }) {
    final $result = create();
    if (inventory != null) {
      $result.inventory = inventory;
    }
    return $result;
  }
  UpdateInventoryResponse._() : super();
  factory UpdateInventoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateInventoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateInventoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'inventory.v1'), createEmptyInstance: create)
    ..aOM<Inventory>(1, _omitFieldNames ? '' : 'inventory', subBuilder: Inventory.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateInventoryResponse clone() => UpdateInventoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateInventoryResponse copyWith(void Function(UpdateInventoryResponse) updates) => super.copyWith((message) => updates(message as UpdateInventoryResponse)) as UpdateInventoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateInventoryResponse create() => UpdateInventoryResponse._();
  UpdateInventoryResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateInventoryResponse> createRepeated() => $pb.PbList<UpdateInventoryResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateInventoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateInventoryResponse>(create);
  static UpdateInventoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Inventory get inventory => $_getN(0);
  @$pb.TagNumber(1)
  set inventory(Inventory v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInventory() => $_has(0);
  @$pb.TagNumber(1)
  void clearInventory() => clearField(1);
  @$pb.TagNumber(1)
  Inventory ensureInventory() => $_ensure(0);
}

class DeleteInventoryRequest extends $pb.GeneratedMessage {
  factory DeleteInventoryRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteInventoryRequest._() : super();
  factory DeleteInventoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteInventoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteInventoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'inventory.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteInventoryRequest clone() => DeleteInventoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteInventoryRequest copyWith(void Function(DeleteInventoryRequest) updates) => super.copyWith((message) => updates(message as DeleteInventoryRequest)) as DeleteInventoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteInventoryRequest create() => DeleteInventoryRequest._();
  DeleteInventoryRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteInventoryRequest> createRepeated() => $pb.PbList<DeleteInventoryRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteInventoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteInventoryRequest>(create);
  static DeleteInventoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteInventoryResponse extends $pb.GeneratedMessage {
  factory DeleteInventoryResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteInventoryResponse._() : super();
  factory DeleteInventoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteInventoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteInventoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'inventory.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteInventoryResponse clone() => DeleteInventoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteInventoryResponse copyWith(void Function(DeleteInventoryResponse) updates) => super.copyWith((message) => updates(message as DeleteInventoryResponse)) as DeleteInventoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteInventoryResponse create() => DeleteInventoryResponse._();
  DeleteInventoryResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteInventoryResponse> createRepeated() => $pb.PbList<DeleteInventoryResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteInventoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteInventoryResponse>(create);
  static DeleteInventoryResponse? _defaultInstance;

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
