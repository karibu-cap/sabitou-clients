//
//  Generated code. Do not modify.
//  source: media/v1/media.proto
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

import 'media.pb.dart' as $0;

export 'media.pb.dart';

@$pb.GrpcServiceName('media.v1.MediaService')
class MediaServiceClient extends $grpc.Client {
  static final _$createMedia = $grpc.ClientMethod<$0.CreateMediaRequest, $0.CreateMediaResponse>(
      '/media.v1.MediaService/CreateMedia',
      ($0.CreateMediaRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateMediaResponse.fromBuffer(value));
  static final _$getMedia = $grpc.ClientMethod<$0.GetMediaRequest, $0.GetMediaResponse>(
      '/media.v1.MediaService/GetMedia',
      ($0.GetMediaRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetMediaResponse.fromBuffer(value));
  static final _$updateMedia = $grpc.ClientMethod<$0.UpdateMediaRequest, $0.UpdateMediaResponse>(
      '/media.v1.MediaService/UpdateMedia',
      ($0.UpdateMediaRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateMediaResponse.fromBuffer(value));
  static final _$deleteMedia = $grpc.ClientMethod<$0.DeleteMediaRequest, $0.DeleteMediaResponse>(
      '/media.v1.MediaService/DeleteMedia',
      ($0.DeleteMediaRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteMediaResponse.fromBuffer(value));

  MediaServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateMediaResponse> createMedia($0.CreateMediaRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createMedia, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetMediaResponse> getMedia($0.GetMediaRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMedia, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateMediaResponse> updateMedia($0.UpdateMediaRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateMedia, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteMediaResponse> deleteMedia($0.DeleteMediaRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteMedia, request, options: options);
  }
}

@$pb.GrpcServiceName('media.v1.MediaService')
abstract class MediaServiceBase extends $grpc.Service {
  $core.String get $name => 'media.v1.MediaService';

  MediaServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateMediaRequest, $0.CreateMediaResponse>(
        'CreateMedia',
        createMedia_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateMediaRequest.fromBuffer(value),
        ($0.CreateMediaResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetMediaRequest, $0.GetMediaResponse>(
        'GetMedia',
        getMedia_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetMediaRequest.fromBuffer(value),
        ($0.GetMediaResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateMediaRequest, $0.UpdateMediaResponse>(
        'UpdateMedia',
        updateMedia_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateMediaRequest.fromBuffer(value),
        ($0.UpdateMediaResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteMediaRequest, $0.DeleteMediaResponse>(
        'DeleteMedia',
        deleteMedia_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteMediaRequest.fromBuffer(value),
        ($0.DeleteMediaResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateMediaResponse> createMedia_Pre($grpc.ServiceCall call, $async.Future<$0.CreateMediaRequest> request) async {
    return createMedia(call, await request);
  }

  $async.Future<$0.GetMediaResponse> getMedia_Pre($grpc.ServiceCall call, $async.Future<$0.GetMediaRequest> request) async {
    return getMedia(call, await request);
  }

  $async.Future<$0.UpdateMediaResponse> updateMedia_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateMediaRequest> request) async {
    return updateMedia(call, await request);
  }

  $async.Future<$0.DeleteMediaResponse> deleteMedia_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteMediaRequest> request) async {
    return deleteMedia(call, await request);
  }

  $async.Future<$0.CreateMediaResponse> createMedia($grpc.ServiceCall call, $0.CreateMediaRequest request);
  $async.Future<$0.GetMediaResponse> getMedia($grpc.ServiceCall call, $0.GetMediaRequest request);
  $async.Future<$0.UpdateMediaResponse> updateMedia($grpc.ServiceCall call, $0.UpdateMediaRequest request);
  $async.Future<$0.DeleteMediaResponse> deleteMedia($grpc.ServiceCall call, $0.DeleteMediaRequest request);
}
