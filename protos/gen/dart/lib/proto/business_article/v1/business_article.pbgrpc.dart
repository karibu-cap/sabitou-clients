//
//  Generated code. Do not modify.
//  source: business_article/v1/business_article.proto
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

import 'business_article.pb.dart' as $4;

export 'business_article.pb.dart';

@$pb.GrpcServiceName('business_article.v1.BusinessArticleService')
class BusinessArticleServiceClient extends $grpc.Client {
  static final _$createBusinessArticle = $grpc.ClientMethod<$4.CreateBusinessArticleRequest, $4.CreateBusinessArticleResponse>(
      '/business_article.v1.BusinessArticleService/CreateBusinessArticle',
      ($4.CreateBusinessArticleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreateBusinessArticleResponse.fromBuffer(value));
  static final _$getBusinessArticle = $grpc.ClientMethod<$4.GetBusinessArticleRequest, $4.GetBusinessArticleResponse>(
      '/business_article.v1.BusinessArticleService/GetBusinessArticle',
      ($4.GetBusinessArticleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetBusinessArticleResponse.fromBuffer(value));
  static final _$updateBusinessArticle = $grpc.ClientMethod<$4.UpdateBusinessArticleRequest, $4.UpdateBusinessArticleResponse>(
      '/business_article.v1.BusinessArticleService/UpdateBusinessArticle',
      ($4.UpdateBusinessArticleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateBusinessArticleResponse.fromBuffer(value));
  static final _$deleteBusinessArticle = $grpc.ClientMethod<$4.DeleteBusinessArticleRequest, $4.DeleteBusinessArticleResponse>(
      '/business_article.v1.BusinessArticleService/DeleteBusinessArticle',
      ($4.DeleteBusinessArticleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteBusinessArticleResponse.fromBuffer(value));

  BusinessArticleServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.CreateBusinessArticleResponse> createBusinessArticle($4.CreateBusinessArticleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createBusinessArticle, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetBusinessArticleResponse> getBusinessArticle($4.GetBusinessArticleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBusinessArticle, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateBusinessArticleResponse> updateBusinessArticle($4.UpdateBusinessArticleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateBusinessArticle, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteBusinessArticleResponse> deleteBusinessArticle($4.DeleteBusinessArticleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteBusinessArticle, request, options: options);
  }
}

@$pb.GrpcServiceName('business_article.v1.BusinessArticleService')
abstract class BusinessArticleServiceBase extends $grpc.Service {
  $core.String get $name => 'business_article.v1.BusinessArticleService';

  BusinessArticleServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.CreateBusinessArticleRequest, $4.CreateBusinessArticleResponse>(
        'CreateBusinessArticle',
        createBusinessArticle_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateBusinessArticleRequest.fromBuffer(value),
        ($4.CreateBusinessArticleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetBusinessArticleRequest, $4.GetBusinessArticleResponse>(
        'GetBusinessArticle',
        getBusinessArticle_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetBusinessArticleRequest.fromBuffer(value),
        ($4.GetBusinessArticleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateBusinessArticleRequest, $4.UpdateBusinessArticleResponse>(
        'UpdateBusinessArticle',
        updateBusinessArticle_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateBusinessArticleRequest.fromBuffer(value),
        ($4.UpdateBusinessArticleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteBusinessArticleRequest, $4.DeleteBusinessArticleResponse>(
        'DeleteBusinessArticle',
        deleteBusinessArticle_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteBusinessArticleRequest.fromBuffer(value),
        ($4.DeleteBusinessArticleResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.CreateBusinessArticleResponse> createBusinessArticle_Pre($grpc.ServiceCall call, $async.Future<$4.CreateBusinessArticleRequest> request) async {
    return createBusinessArticle(call, await request);
  }

  $async.Future<$4.GetBusinessArticleResponse> getBusinessArticle_Pre($grpc.ServiceCall call, $async.Future<$4.GetBusinessArticleRequest> request) async {
    return getBusinessArticle(call, await request);
  }

  $async.Future<$4.UpdateBusinessArticleResponse> updateBusinessArticle_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateBusinessArticleRequest> request) async {
    return updateBusinessArticle(call, await request);
  }

  $async.Future<$4.DeleteBusinessArticleResponse> deleteBusinessArticle_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteBusinessArticleRequest> request) async {
    return deleteBusinessArticle(call, await request);
  }

  $async.Future<$4.CreateBusinessArticleResponse> createBusinessArticle($grpc.ServiceCall call, $4.CreateBusinessArticleRequest request);
  $async.Future<$4.GetBusinessArticleResponse> getBusinessArticle($grpc.ServiceCall call, $4.GetBusinessArticleRequest request);
  $async.Future<$4.UpdateBusinessArticleResponse> updateBusinessArticle($grpc.ServiceCall call, $4.UpdateBusinessArticleRequest request);
  $async.Future<$4.DeleteBusinessArticleResponse> deleteBusinessArticle($grpc.ServiceCall call, $4.DeleteBusinessArticleRequest request);
}
