//
//  Generated code. Do not modify.
//  source: article_category/v1/article_category.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'article_category.pb.dart' as $2;

export 'article_category.pb.dart';

@$pb.GrpcServiceName('article_category.v1.ArticleCategoryService')
class ArticleCategoryServiceClient extends $grpc.Client {
  static final _$createArticleCategory = $grpc.ClientMethod<$2.CreateArticleCategoryRequest, $2.CreateArticleCategoryResponse>(
      '/article_category.v1.ArticleCategoryService/CreateArticleCategory',
      ($2.CreateArticleCategoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CreateArticleCategoryResponse.fromBuffer(value));
  static final _$getArticleCategory = $grpc.ClientMethod<$2.GetArticleCategoryRequest, $2.GetArticleCategoryResponse>(
      '/article_category.v1.ArticleCategoryService/GetArticleCategory',
      ($2.GetArticleCategoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetArticleCategoryResponse.fromBuffer(value));
  static final _$updateArticleCategory = $grpc.ClientMethod<$2.UpdateArticleCategoryRequest, $2.UpdateArticleCategoryResponse>(
      '/article_category.v1.ArticleCategoryService/UpdateArticleCategory',
      ($2.UpdateArticleCategoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdateArticleCategoryResponse.fromBuffer(value));
  static final _$deleteArticleCategory = $grpc.ClientMethod<$2.DeleteArticleCategoryRequest, $2.DeleteArticleCategoryResponse>(
      '/article_category.v1.ArticleCategoryService/DeleteArticleCategory',
      ($2.DeleteArticleCategoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.DeleteArticleCategoryResponse.fromBuffer(value));

  ArticleCategoryServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.CreateArticleCategoryResponse> createArticleCategory($2.CreateArticleCategoryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createArticleCategory, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetArticleCategoryResponse> getArticleCategory($2.GetArticleCategoryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getArticleCategory, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateArticleCategoryResponse> updateArticleCategory($2.UpdateArticleCategoryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateArticleCategory, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeleteArticleCategoryResponse> deleteArticleCategory($2.DeleteArticleCategoryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteArticleCategory, request, options: options);
  }
}

@$pb.GrpcServiceName('article_category.v1.ArticleCategoryService')
abstract class ArticleCategoryServiceBase extends $grpc.Service {
  $core.String get $name => 'article_category.v1.ArticleCategoryService';

  ArticleCategoryServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CreateArticleCategoryRequest, $2.CreateArticleCategoryResponse>(
        'CreateArticleCategory',
        createArticleCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateArticleCategoryRequest.fromBuffer(value),
        ($2.CreateArticleCategoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetArticleCategoryRequest, $2.GetArticleCategoryResponse>(
        'GetArticleCategory',
        getArticleCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetArticleCategoryRequest.fromBuffer(value),
        ($2.GetArticleCategoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateArticleCategoryRequest, $2.UpdateArticleCategoryResponse>(
        'UpdateArticleCategory',
        updateArticleCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateArticleCategoryRequest.fromBuffer(value),
        ($2.UpdateArticleCategoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteArticleCategoryRequest, $2.DeleteArticleCategoryResponse>(
        'DeleteArticleCategory',
        deleteArticleCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeleteArticleCategoryRequest.fromBuffer(value),
        ($2.DeleteArticleCategoryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.CreateArticleCategoryResponse> createArticleCategory_Pre($grpc.ServiceCall call, $async.Future<$2.CreateArticleCategoryRequest> request) async {
    return createArticleCategory(call, await request);
  }

  $async.Future<$2.GetArticleCategoryResponse> getArticleCategory_Pre($grpc.ServiceCall call, $async.Future<$2.GetArticleCategoryRequest> request) async {
    return getArticleCategory(call, await request);
  }

  $async.Future<$2.UpdateArticleCategoryResponse> updateArticleCategory_Pre($grpc.ServiceCall call, $async.Future<$2.UpdateArticleCategoryRequest> request) async {
    return updateArticleCategory(call, await request);
  }

  $async.Future<$2.DeleteArticleCategoryResponse> deleteArticleCategory_Pre($grpc.ServiceCall call, $async.Future<$2.DeleteArticleCategoryRequest> request) async {
    return deleteArticleCategory(call, await request);
  }

  $async.Future<$2.CreateArticleCategoryResponse> createArticleCategory($grpc.ServiceCall call, $2.CreateArticleCategoryRequest request);
  $async.Future<$2.GetArticleCategoryResponse> getArticleCategory($grpc.ServiceCall call, $2.GetArticleCategoryRequest request);
  $async.Future<$2.UpdateArticleCategoryResponse> updateArticleCategory($grpc.ServiceCall call, $2.UpdateArticleCategoryRequest request);
  $async.Future<$2.DeleteArticleCategoryResponse> deleteArticleCategory($grpc.ServiceCall call, $2.DeleteArticleCategoryRequest request);
}
