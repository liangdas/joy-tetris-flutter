///
//  Generated code. Do not modify.
//  source: message/game.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class C2S_EnterRoom extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'C2S_EnterRoom', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hold', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  C2S_EnterRoom._() : super();
  factory C2S_EnterRoom() => create();
  factory C2S_EnterRoom.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory C2S_EnterRoom.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  C2S_EnterRoom clone() => C2S_EnterRoom()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  C2S_EnterRoom copyWith(void Function(C2S_EnterRoom) updates) => super.copyWith((message) => updates(message as C2S_EnterRoom)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static C2S_EnterRoom create() => C2S_EnterRoom._();
  C2S_EnterRoom createEmptyInstance() => create();
  static $pb.PbList<C2S_EnterRoom> createRepeated() => $pb.PbList<C2S_EnterRoom>();
  @$core.pragma('dart2js:noInline')
  static C2S_EnterRoom getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<C2S_EnterRoom>(create);
  static C2S_EnterRoom _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get hold => $_getIZ(0);
  @$pb.TagNumber(1)
  set hold($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHold() => $_has(0);
  @$pb.TagNumber(1)
  void clearHold() => clearField(1);
}

class C2S_ExitRoom extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'C2S_ExitRoom', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hold', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  C2S_ExitRoom._() : super();
  factory C2S_ExitRoom() => create();
  factory C2S_ExitRoom.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory C2S_ExitRoom.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  C2S_ExitRoom clone() => C2S_ExitRoom()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  C2S_ExitRoom copyWith(void Function(C2S_ExitRoom) updates) => super.copyWith((message) => updates(message as C2S_ExitRoom)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static C2S_ExitRoom create() => C2S_ExitRoom._();
  C2S_ExitRoom createEmptyInstance() => create();
  static $pb.PbList<C2S_ExitRoom> createRepeated() => $pb.PbList<C2S_ExitRoom>();
  @$core.pragma('dart2js:noInline')
  static C2S_ExitRoom getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<C2S_ExitRoom>(create);
  static C2S_ExitRoom _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get hold => $_getIZ(0);
  @$pb.TagNumber(1)
  set hold($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHold() => $_has(0);
  @$pb.TagNumber(1)
  void clearHold() => clearField(1);
}

class C2S_SyncInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'C2S_SyncInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'game'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hold', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  C2S_SyncInfo._() : super();
  factory C2S_SyncInfo() => create();
  factory C2S_SyncInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory C2S_SyncInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  C2S_SyncInfo clone() => C2S_SyncInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  C2S_SyncInfo copyWith(void Function(C2S_SyncInfo) updates) => super.copyWith((message) => updates(message as C2S_SyncInfo)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static C2S_SyncInfo create() => C2S_SyncInfo._();
  C2S_SyncInfo createEmptyInstance() => create();
  static $pb.PbList<C2S_SyncInfo> createRepeated() => $pb.PbList<C2S_SyncInfo>();
  @$core.pragma('dart2js:noInline')
  static C2S_SyncInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<C2S_SyncInfo>(create);
  static C2S_SyncInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get hold => $_getIZ(0);
  @$pb.TagNumber(1)
  set hold($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHold() => $_has(0);
  @$pb.TagNumber(1)
  void clearHold() => clearField(1);
}

