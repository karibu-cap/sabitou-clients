//
//  Generated code. Do not modify.
//  source: article/v1/article.proto
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

import 'article.pb.dart' as $1;

export 'article.pb.dart';

@$pb.GrpcServiceName('article.v1.ArticleService')
class ArticleServiceClient extends $grpc.Client {
  static final _$getArticle = $grpc.ClientMethod<$1.GetArticleRequest, $1.GetArticleResponse>(
      '/article.v1.ArticleService/GetArticle',
      ($1.GetArticleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetArticleResponse.fromBuffer(value));
  static final _$createArticle = $grpc.ClientMethod<$1.CreateArticleRequest, $1.CreateArticleResponse>(
      '/article.v1.ArticleService/CreateArticle',
      ($1.CreateArticleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CreateArticleResponse.fromBuffer(value));
  static final _$updateArticle = $grpc.ClientMethod<$1.UpdateArticleRequest, $1.UpdateArticleResponse>(
      '/article.v1.ArticleService/UpdateArticle',
      ($1.UpdateArticleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.UpdateArticleResponse.fromBuffer(value));
  static final _$deleteArticle = $grpc.ClientMethod<$1.DeleteArticleRequest, $1.DeleteArticleResponse>(
      '/article.v1.ArticleService/DeleteArticle',
      ($1.DeleteArticleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.DeleteArticleResponse.fromBuffer(value));

  ArticleServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.GetArticleResponse> getArticle($1.GetArticleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getArticle, request, options: options);
  }

  $grpc.ResponseFuture<$1.CreateArticleResponse> createArticle($1.CreateArticleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createArticle, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateArticleResponse> updateArticle($1.UpdateArticleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateArticle, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteArticleResponse> deleteArticle($1.DeleteArticleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteArticle, request, options: options);
  }
}

@$pb.GrpcServiceName('article.v1.ArticleService')
abstract class ArticleServiceBase extends $grpc.Service {
  $core.String get $name => 'article.v1.ArticleService';

  ArticleServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.GetArticleRequest, $1.GetArticleResponse>(
        'GetArticle',
        getArticle_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetArticleRequest.fromBuffer(value),
        ($1.GetArticleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CreateArticleRequest, $1.CreateArticleResponse>(
        'CreateArticle',
        createArticle_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CreateArticleRequest.fromBuffer(value),
        ($1.CreateArticleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateArticleRequest, $1.UpdateArticleResponse>(
        'UpdateArticle',
        updateArticle_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdateArticleRequest.fromBuffer(value),
        ($1.UpdateArticleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteArticleRequest, $1.DeleteArticleResponse>(
        'DeleteArticle',
        deleteArticle_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DeleteArticleRequest.fromBuffer(value),
        ($1.DeleteArticleResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.GetArticleResponse> getArticle_Pre($grpc.ServiceCall call, $async.Future<$1.GetArticleRequest> request) async {
    return getArticle(call, await request);
  }

  $async.Future<$1.CreateArticleResponse> createArticle_Pre($grpc.ServiceCall call, $async.Future<$1.CreateArticleRequest> request) async {
    return createArticle(call, await request);
  }

  $async.Future<$1.UpdateArticleResponse> updateArticle_Pre($grpc.ServiceCall call, $async.Future<$1.UpdateArticleRequest> request) async {
    return updateArticle(call, await request);
  }

  $async.Future<$1.DeleteArticleResponse> deleteArticle_Pre($grpc.ServiceCall call, $async.Future<$1.DeleteArticleRequest> request) async {
    return deleteArticle(call, await request);
  }

  $async.Future<$1.GetArticleResponse> getArticle($grpc.ServiceCall call, $1.GetArticleRequest request);
  $async.Future<$1.CreateArticleResponse> createArticle($grpc.ServiceCall call, $1.CreateArticleRequest request);
  $async.Future<$1.UpdateArticleResponse> updateArticle($grpc.ServiceCall call, $1.UpdateArticleRequest request);
  $async.Future<$1.DeleteArticleResponse> deleteArticle($grpc.ServiceCall call, $1.DeleteArticleRequest request);
}
