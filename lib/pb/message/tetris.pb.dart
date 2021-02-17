///
//  Generated code. Do not modify.
//  source: message/tetris.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'game.pb.dart' as $1;

import 'tetris.pbenum.dart';

export 'tetris.pbenum.dart';

class S2S_Tetris_Create extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'S2S_Tetris_Create', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tetris'), createEmptyInstance: create)
    ..e<TetrisGameType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gameType', $pb.PbFieldType.OE, defaultOrMaker: TetrisGameType.CLASSIC, valueOf: TetrisGameType.valueOf, enumValues: TetrisGameType.values)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerNum')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gear')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'useProps')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'private')
    ..p<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userList', $pb.PbFieldType.P6)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomId')
    ..hasRequiredFields = false
  ;

  S2S_Tetris_Create._() : super();
  factory S2S_Tetris_Create() => create();
  factory S2S_Tetris_Create.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory S2S_Tetris_Create.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  S2S_Tetris_Create clone() => S2S_Tetris_Create()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  S2S_Tetris_Create copyWith(void Function(S2S_Tetris_Create) updates) => super.copyWith((message) => updates(message as S2S_Tetris_Create)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static S2S_Tetris_Create create() => S2S_Tetris_Create._();
  S2S_Tetris_Create createEmptyInstance() => create();
  static $pb.PbList<S2S_Tetris_Create> createRepeated() => $pb.PbList<S2S_Tetris_Create>();
  @$core.pragma('dart2js:noInline')
  static S2S_Tetris_Create getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<S2S_Tetris_Create>(create);
  static S2S_Tetris_Create _defaultInstance;

  @$pb.TagNumber(1)
  TetrisGameType get gameType => $_getN(0);
  @$pb.TagNumber(1)
  set gameType(TetrisGameType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameType() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get playerNum => $_getI64(1);
  @$pb.TagNumber(2)
  set playerNum($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPlayerNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlayerNum() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get gear => $_getI64(2);
  @$pb.TagNumber(3)
  set gear($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGear() => $_has(2);
  @$pb.TagNumber(3)
  void clearGear() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get useProps => $_getBF(3);
  @$pb.TagNumber(4)
  set useProps($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUseProps() => $_has(3);
  @$pb.TagNumber(4)
  void clearUseProps() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get private => $_getBF(4);
  @$pb.TagNumber(5)
  set private($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrivate() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrivate() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$fixnum.Int64> get userList => $_getList(5);

  @$pb.TagNumber(7)
  $core.String get version => $_getSZ(6);
  @$pb.TagNumber(7)
  set version($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasVersion() => $_has(6);
  @$pb.TagNumber(7)
  void clearVersion() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get owner => $_getI64(7);
  @$pb.TagNumber(8)
  set owner($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasOwner() => $_has(7);
  @$pb.TagNumber(8)
  void clearOwner() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get roomId => $_getSZ(8);
  @$pb.TagNumber(9)
  set roomId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRoomId() => $_has(8);
  @$pb.TagNumber(9)
  void clearRoomId() => clearField(9);
}

class S2S_Tetris_Create_Debug extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'S2S_Tetris_Create_Debug', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tetris'), createEmptyInstance: create)
    ..e<TetrisGameType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gameType', $pb.PbFieldType.OE, defaultOrMaker: TetrisGameType.CLASSIC, valueOf: TetrisGameType.valueOf, enumValues: TetrisGameType.values)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerNum')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gear')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'useProps')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'private')
    ..p<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userList', $pb.PbFieldType.P6)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomId')
    ..hasRequiredFields = false
  ;

  S2S_Tetris_Create_Debug._() : super();
  factory S2S_Tetris_Create_Debug() => create();
  factory S2S_Tetris_Create_Debug.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory S2S_Tetris_Create_Debug.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  S2S_Tetris_Create_Debug clone() => S2S_Tetris_Create_Debug()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  S2S_Tetris_Create_Debug copyWith(void Function(S2S_Tetris_Create_Debug) updates) => super.copyWith((message) => updates(message as S2S_Tetris_Create_Debug)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static S2S_Tetris_Create_Debug create() => S2S_Tetris_Create_Debug._();
  S2S_Tetris_Create_Debug createEmptyInstance() => create();
  static $pb.PbList<S2S_Tetris_Create_Debug> createRepeated() => $pb.PbList<S2S_Tetris_Create_Debug>();
  @$core.pragma('dart2js:noInline')
  static S2S_Tetris_Create_Debug getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<S2S_Tetris_Create_Debug>(create);
  static S2S_Tetris_Create_Debug _defaultInstance;

  @$pb.TagNumber(1)
  TetrisGameType get gameType => $_getN(0);
  @$pb.TagNumber(1)
  set gameType(TetrisGameType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameType() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get playerNum => $_getI64(1);
  @$pb.TagNumber(2)
  set playerNum($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPlayerNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlayerNum() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get gear => $_getI64(2);
  @$pb.TagNumber(3)
  set gear($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGear() => $_has(2);
  @$pb.TagNumber(3)
  void clearGear() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get useProps => $_getBF(3);
  @$pb.TagNumber(4)
  set useProps($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUseProps() => $_has(3);
  @$pb.TagNumber(4)
  void clearUseProps() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get private => $_getBF(4);
  @$pb.TagNumber(5)
  set private($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrivate() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrivate() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$fixnum.Int64> get userList => $_getList(5);

  @$pb.TagNumber(7)
  $core.String get version => $_getSZ(6);
  @$pb.TagNumber(7)
  set version($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasVersion() => $_has(6);
  @$pb.TagNumber(7)
  void clearVersion() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get owner => $_getI64(7);
  @$pb.TagNumber(8)
  set owner($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasOwner() => $_has(7);
  @$pb.TagNumber(8)
  void clearOwner() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get roomId => $_getSZ(8);
  @$pb.TagNumber(9)
  set roomId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRoomId() => $_has(8);
  @$pb.TagNumber(9)
  void clearRoomId() => clearField(9);
}

class S2R_Tetris_Create extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'S2R_Tetris_Create', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tetris'), createEmptyInstance: create)
    ..e<TetrisGameType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gameType', $pb.PbFieldType.OE, defaultOrMaker: TetrisGameType.CLASSIC, valueOf: TetrisGameType.valueOf, enumValues: TetrisGameType.values)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerNum')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gear')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'useProps')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'private')
    ..p<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userList', $pb.PbFieldType.P6)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomId')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shortId')
    ..hasRequiredFields = false
  ;

  S2R_Tetris_Create._() : super();
  factory S2R_Tetris_Create() => create();
  factory S2R_Tetris_Create.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory S2R_Tetris_Create.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  S2R_Tetris_Create clone() => S2R_Tetris_Create()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  S2R_Tetris_Create copyWith(void Function(S2R_Tetris_Create) updates) => super.copyWith((message) => updates(message as S2R_Tetris_Create)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static S2R_Tetris_Create create() => S2R_Tetris_Create._();
  S2R_Tetris_Create createEmptyInstance() => create();
  static $pb.PbList<S2R_Tetris_Create> createRepeated() => $pb.PbList<S2R_Tetris_Create>();
  @$core.pragma('dart2js:noInline')
  static S2R_Tetris_Create getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<S2R_Tetris_Create>(create);
  static S2R_Tetris_Create _defaultInstance;

  @$pb.TagNumber(1)
  TetrisGameType get gameType => $_getN(0);
  @$pb.TagNumber(1)
  set gameType(TetrisGameType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameType() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get playerNum => $_getI64(1);
  @$pb.TagNumber(2)
  set playerNum($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPlayerNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlayerNum() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get gear => $_getI64(2);
  @$pb.TagNumber(3)
  set gear($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGear() => $_has(2);
  @$pb.TagNumber(3)
  void clearGear() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get useProps => $_getBF(3);
  @$pb.TagNumber(4)
  set useProps($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUseProps() => $_has(3);
  @$pb.TagNumber(4)
  void clearUseProps() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get private => $_getBF(4);
  @$pb.TagNumber(5)
  set private($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrivate() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrivate() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$fixnum.Int64> get userList => $_getList(5);

  @$pb.TagNumber(7)
  $core.String get version => $_getSZ(6);
  @$pb.TagNumber(7)
  set version($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasVersion() => $_has(6);
  @$pb.TagNumber(7)
  void clearVersion() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get owner => $_getI64(7);
  @$pb.TagNumber(8)
  set owner($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasOwner() => $_has(7);
  @$pb.TagNumber(8)
  void clearOwner() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get roomId => $_getSZ(8);
  @$pb.TagNumber(9)
  set roomId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRoomId() => $_has(8);
  @$pb.TagNumber(9)
  void clearRoomId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get shortId => $_getSZ(9);
  @$pb.TagNumber(10)
  set shortId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasShortId() => $_has(9);
  @$pb.TagNumber(10)
  void clearShortId() => clearField(10);
}

class C2S_Tetris extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'C2S_Tetris', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tetris'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgType')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomId')
    ..aOM<$1.C2S_EnterRoom>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enterRoomC2s', subBuilder: $1.C2S_EnterRoom.create)
    ..aOM<$1.C2S_ExitRoom>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'exitRoomC2s', subBuilder: $1.C2S_ExitRoom.create)
    ..aOM<$1.C2S_SyncInfo>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'syncInfoC2s', subBuilder: $1.C2S_SyncInfo.create)
    ..aOM<C2S_Heartbeat>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'heartbeatC2s', subBuilder: C2S_Heartbeat.create)
    ..aOM<C2S_PlayerExpression>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerExpressionC2s', subBuilder: C2S_PlayerExpression.create)
    ..aOM<C2S_OperationSkeleton>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerOperationSkeletonC2s', subBuilder: C2S_OperationSkeleton.create)
    ..aOM<C2S_SelectSkeleton>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerSelectSkeletonC2s', subBuilder: C2S_SelectSkeleton.create)
    ..hasRequiredFields = false
  ;

  C2S_Tetris._() : super();
  factory C2S_Tetris() => create();
  factory C2S_Tetris.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory C2S_Tetris.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  C2S_Tetris clone() => C2S_Tetris()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  C2S_Tetris copyWith(void Function(C2S_Tetris) updates) => super.copyWith((message) => updates(message as C2S_Tetris)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static C2S_Tetris create() => C2S_Tetris._();
  C2S_Tetris createEmptyInstance() => create();
  static $pb.PbList<C2S_Tetris> createRepeated() => $pb.PbList<C2S_Tetris>();
  @$core.pragma('dart2js:noInline')
  static C2S_Tetris getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<C2S_Tetris>(create);
  static C2S_Tetris _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get msgType => $_getSZ(0);
  @$pb.TagNumber(1)
  set msgType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgType() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get roomId => $_getSZ(1);
  @$pb.TagNumber(2)
  set roomId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomId() => clearField(2);

  @$pb.TagNumber(3)
  $1.C2S_EnterRoom get enterRoomC2s => $_getN(2);
  @$pb.TagNumber(3)
  set enterRoomC2s($1.C2S_EnterRoom v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEnterRoomC2s() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnterRoomC2s() => clearField(3);
  @$pb.TagNumber(3)
  $1.C2S_EnterRoom ensureEnterRoomC2s() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.C2S_ExitRoom get exitRoomC2s => $_getN(3);
  @$pb.TagNumber(4)
  set exitRoomC2s($1.C2S_ExitRoom v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasExitRoomC2s() => $_has(3);
  @$pb.TagNumber(4)
  void clearExitRoomC2s() => clearField(4);
  @$pb.TagNumber(4)
  $1.C2S_ExitRoom ensureExitRoomC2s() => $_ensure(3);

  @$pb.TagNumber(5)
  $1.C2S_SyncInfo get syncInfoC2s => $_getN(4);
  @$pb.TagNumber(5)
  set syncInfoC2s($1.C2S_SyncInfo v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSyncInfoC2s() => $_has(4);
  @$pb.TagNumber(5)
  void clearSyncInfoC2s() => clearField(5);
  @$pb.TagNumber(5)
  $1.C2S_SyncInfo ensureSyncInfoC2s() => $_ensure(4);

  @$pb.TagNumber(6)
  C2S_Heartbeat get heartbeatC2s => $_getN(5);
  @$pb.TagNumber(6)
  set heartbeatC2s(C2S_Heartbeat v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasHeartbeatC2s() => $_has(5);
  @$pb.TagNumber(6)
  void clearHeartbeatC2s() => clearField(6);
  @$pb.TagNumber(6)
  C2S_Heartbeat ensureHeartbeatC2s() => $_ensure(5);

  @$pb.TagNumber(7)
  C2S_PlayerExpression get playerExpressionC2s => $_getN(6);
  @$pb.TagNumber(7)
  set playerExpressionC2s(C2S_PlayerExpression v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasPlayerExpressionC2s() => $_has(6);
  @$pb.TagNumber(7)
  void clearPlayerExpressionC2s() => clearField(7);
  @$pb.TagNumber(7)
  C2S_PlayerExpression ensurePlayerExpressionC2s() => $_ensure(6);

  @$pb.TagNumber(8)
  C2S_OperationSkeleton get playerOperationSkeletonC2s => $_getN(7);
  @$pb.TagNumber(8)
  set playerOperationSkeletonC2s(C2S_OperationSkeleton v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasPlayerOperationSkeletonC2s() => $_has(7);
  @$pb.TagNumber(8)
  void clearPlayerOperationSkeletonC2s() => clearField(8);
  @$pb.TagNumber(8)
  C2S_OperationSkeleton ensurePlayerOperationSkeletonC2s() => $_ensure(7);

  @$pb.TagNumber(9)
  C2S_SelectSkeleton get playerSelectSkeletonC2s => $_getN(8);
  @$pb.TagNumber(9)
  set playerSelectSkeletonC2s(C2S_SelectSkeleton v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasPlayerSelectSkeletonC2s() => $_has(8);
  @$pb.TagNumber(9)
  void clearPlayerSelectSkeletonC2s() => clearField(9);
  @$pb.TagNumber(9)
  C2S_SelectSkeleton ensurePlayerSelectSkeletonC2s() => $_ensure(8);
}

class C2S_PlayerExpression extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'C2S_PlayerExpression', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tetris'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expressIndex')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toUser')
    ..hasRequiredFields = false
  ;

  C2S_PlayerExpression._() : super();
  factory C2S_PlayerExpression() => create();
  factory C2S_PlayerExpression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory C2S_PlayerExpression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  C2S_PlayerExpression clone() => C2S_PlayerExpression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  C2S_PlayerExpression copyWith(void Function(C2S_PlayerExpression) updates) => super.copyWith((message) => updates(message as C2S_PlayerExpression)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static C2S_PlayerExpression create() => C2S_PlayerExpression._();
  C2S_PlayerExpression createEmptyInstance() => create();
  static $pb.PbList<C2S_PlayerExpression> createRepeated() => $pb.PbList<C2S_PlayerExpression>();
  @$core.pragma('dart2js:noInline')
  static C2S_PlayerExpression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<C2S_PlayerExpression>(create);
  static C2S_PlayerExpression _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get expressIndex => $_getSZ(0);
  @$pb.TagNumber(1)
  set expressIndex($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasExpressIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpressIndex() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get toUser => $_getI64(1);
  @$pb.TagNumber(2)
  set toUser($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearToUser() => clearField(2);
}

class C2S_Heartbeat extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'C2S_Heartbeat', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tetris'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hold', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  C2S_Heartbeat._() : super();
  factory C2S_Heartbeat() => create();
  factory C2S_Heartbeat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory C2S_Heartbeat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  C2S_Heartbeat clone() => C2S_Heartbeat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  C2S_Heartbeat copyWith(void Function(C2S_Heartbeat) updates) => super.copyWith((message) => updates(message as C2S_Heartbeat)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static C2S_Heartbeat create() => C2S_Heartbeat._();
  C2S_Heartbeat createEmptyInstance() => create();
  static $pb.PbList<C2S_Heartbeat> createRepeated() => $pb.PbList<C2S_Heartbeat>();
  @$core.pragma('dart2js:noInline')
  static C2S_Heartbeat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<C2S_Heartbeat>(create);
  static C2S_Heartbeat _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get hold => $_getIZ(0);
  @$pb.TagNumber(1)
  set hold($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHold() => $_has(0);
  @$pb.TagNumber(1)
  void clearHold() => clearField(1);
}

class C2S_OperationSkeleton extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'C2S_OperationSkeleton', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tetris'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'opcode')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Frame', $pb.PbFieldType.OU3, protoName: 'Frame')
    ..hasRequiredFields = false
  ;

  C2S_OperationSkeleton._() : super();
  factory C2S_OperationSkeleton() => create();
  factory C2S_OperationSkeleton.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory C2S_OperationSkeleton.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  C2S_OperationSkeleton clone() => C2S_OperationSkeleton()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  C2S_OperationSkeleton copyWith(void Function(C2S_OperationSkeleton) updates) => super.copyWith((message) => updates(message as C2S_OperationSkeleton)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static C2S_OperationSkeleton create() => C2S_OperationSkeleton._();
  C2S_OperationSkeleton createEmptyInstance() => create();
  static $pb.PbList<C2S_OperationSkeleton> createRepeated() => $pb.PbList<C2S_OperationSkeleton>();
  @$core.pragma('dart2js:noInline')
  static C2S_OperationSkeleton getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<C2S_OperationSkeleton>(create);
  static C2S_OperationSkeleton _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get opcode => $_getSZ(0);
  @$pb.TagNumber(1)
  set opcode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOpcode() => $_has(0);
  @$pb.TagNumber(1)
  void clearOpcode() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get frame => $_getIZ(1);
  @$pb.TagNumber(2)
  set frame($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFrame() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrame() => clearField(2);
}

class C2S_SelectSkeleton extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'C2S_SelectSkeleton', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tetris'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Frame', $pb.PbFieldType.OU3, protoName: 'Frame')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skeletonType')
    ..hasRequiredFields = false
  ;

  C2S_SelectSkeleton._() : super();
  factory C2S_SelectSkeleton() => create();
  factory C2S_SelectSkeleton.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory C2S_SelectSkeleton.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  C2S_SelectSkeleton clone() => C2S_SelectSkeleton()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  C2S_SelectSkeleton copyWith(void Function(C2S_SelectSkeleton) updates) => super.copyWith((message) => updates(message as C2S_SelectSkeleton)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static C2S_SelectSkeleton create() => C2S_SelectSkeleton._();
  C2S_SelectSkeleton createEmptyInstance() => create();
  static $pb.PbList<C2S_SelectSkeleton> createRepeated() => $pb.PbList<C2S_SelectSkeleton>();
  @$core.pragma('dart2js:noInline')
  static C2S_SelectSkeleton getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<C2S_SelectSkeleton>(create);
  static C2S_SelectSkeleton _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get frame => $_getIZ(0);
  @$pb.TagNumber(1)
  set frame($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrame() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrame() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get skeletonType => $_getSZ(1);
  @$pb.TagNumber(2)
  set skeletonType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSkeletonType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSkeletonType() => clearField(2);
}

class S2C_Tetris extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'S2C_Tetris', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tetris'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgType', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgId', $pb.PbFieldType.OU3)
    ..aOM<S2C_PlayerStatusChangeBroadcast>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerStatusChangeS2cBroadcast', subBuilder: S2C_PlayerStatusChangeBroadcast.create)
    ..aOM<S2C_GameStatusChangeBroadcast>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gameStatusChangeS2cBroadcast', subBuilder: S2C_GameStatusChangeBroadcast.create)
    ..aOM<S2C_PlayerExpressionBroadcast>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerExpressionS2cBroadcast', subBuilder: S2C_PlayerExpressionBroadcast.create)
    ..aOM<S2C_GridBroadcast>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gridS2cBroadcast', subBuilder: S2C_GridBroadcast.create)
    ..hasRequiredFields = false
  ;

  S2C_Tetris._() : super();
  factory S2C_Tetris() => create();
  factory S2C_Tetris.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory S2C_Tetris.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  S2C_Tetris clone() => S2C_Tetris()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  S2C_Tetris copyWith(void Function(S2C_Tetris) updates) => super.copyWith((message) => updates(message as S2C_Tetris)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static S2C_Tetris create() => S2C_Tetris._();
  S2C_Tetris createEmptyInstance() => create();
  static $pb.PbList<S2C_Tetris> createRepeated() => $pb.PbList<S2C_Tetris>();
  @$core.pragma('dart2js:noInline')
  static S2C_Tetris getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<S2C_Tetris>(create);
  static S2C_Tetris _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get roomId => $_getSZ(0);
  @$pb.TagNumber(1)
  set roomId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get msgType => $_getIZ(1);
  @$pb.TagNumber(2)
  set msgType($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsgType() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsgType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get msgId => $_getIZ(2);
  @$pb.TagNumber(3)
  set msgId($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMsgId() => $_has(2);
  @$pb.TagNumber(3)
  void clearMsgId() => clearField(3);

  @$pb.TagNumber(4)
  S2C_PlayerStatusChangeBroadcast get playerStatusChangeS2cBroadcast => $_getN(3);
  @$pb.TagNumber(4)
  set playerStatusChangeS2cBroadcast(S2C_PlayerStatusChangeBroadcast v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPlayerStatusChangeS2cBroadcast() => $_has(3);
  @$pb.TagNumber(4)
  void clearPlayerStatusChangeS2cBroadcast() => clearField(4);
  @$pb.TagNumber(4)
  S2C_PlayerStatusChangeBroadcast ensurePlayerStatusChangeS2cBroadcast() => $_ensure(3);

  @$pb.TagNumber(5)
  S2C_GameStatusChangeBroadcast get gameStatusChangeS2cBroadcast => $_getN(4);
  @$pb.TagNumber(5)
  set gameStatusChangeS2cBroadcast(S2C_GameStatusChangeBroadcast v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGameStatusChangeS2cBroadcast() => $_has(4);
  @$pb.TagNumber(5)
  void clearGameStatusChangeS2cBroadcast() => clearField(5);
  @$pb.TagNumber(5)
  S2C_GameStatusChangeBroadcast ensureGameStatusChangeS2cBroadcast() => $_ensure(4);

  @$pb.TagNumber(6)
  S2C_PlayerExpressionBroadcast get playerExpressionS2cBroadcast => $_getN(5);
  @$pb.TagNumber(6)
  set playerExpressionS2cBroadcast(S2C_PlayerExpressionBroadcast v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPlayerExpressionS2cBroadcast() => $_has(5);
  @$pb.TagNumber(6)
  void clearPlayerExpressionS2cBroadcast() => clearField(6);
  @$pb.TagNumber(6)
  S2C_PlayerExpressionBroadcast ensurePlayerExpressionS2cBroadcast() => $_ensure(5);

  @$pb.TagNumber(7)
  S2C_GridBroadcast get gridS2cBroadcast => $_getN(6);
  @$pb.TagNumber(7)
  set gridS2cBroadcast(S2C_GridBroadcast v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasGridS2cBroadcast() => $_has(6);
  @$pb.TagNumber(7)
  void clearGridS2cBroadcast() => clearField(7);
  @$pb.TagNumber(7)
  S2C_GridBroadcast ensureGridS2cBroadcast() => $_ensure(6);
}

class S2C_PlayerStatusChangeBroadcast extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'S2C_PlayerStatusChangeBroadcast', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tetris'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'seatIndex', $pb.PbFieldType.OU3)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..e<S2C_PlayerStatusChangeBroadcast_PlayerStatusType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: S2C_PlayerStatusChangeBroadcast_PlayerStatusType.ENTER, valueOf: S2C_PlayerStatusChangeBroadcast_PlayerStatusType.valueOf, enumValues: S2C_PlayerStatusChangeBroadcast_PlayerStatusType.values)
    ..pc<TetrisPlayerInfo>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerInfo', $pb.PbFieldType.PM, subBuilder: TetrisPlayerInfo.create)
    ..hasRequiredFields = false
  ;

  S2C_PlayerStatusChangeBroadcast._() : super();
  factory S2C_PlayerStatusChangeBroadcast() => create();
  factory S2C_PlayerStatusChangeBroadcast.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory S2C_PlayerStatusChangeBroadcast.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  S2C_PlayerStatusChangeBroadcast clone() => S2C_PlayerStatusChangeBroadcast()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  S2C_PlayerStatusChangeBroadcast copyWith(void Function(S2C_PlayerStatusChangeBroadcast) updates) => super.copyWith((message) => updates(message as S2C_PlayerStatusChangeBroadcast)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static S2C_PlayerStatusChangeBroadcast create() => S2C_PlayerStatusChangeBroadcast._();
  S2C_PlayerStatusChangeBroadcast createEmptyInstance() => create();
  static $pb.PbList<S2C_PlayerStatusChangeBroadcast> createRepeated() => $pb.PbList<S2C_PlayerStatusChangeBroadcast>();
  @$core.pragma('dart2js:noInline')
  static S2C_PlayerStatusChangeBroadcast getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<S2C_PlayerStatusChangeBroadcast>(create);
  static S2C_PlayerStatusChangeBroadcast _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get seatIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set seatIndex($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSeatIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeatIndex() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId => $_getI64(1);
  @$pb.TagNumber(2)
  set userId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  S2C_PlayerStatusChangeBroadcast_PlayerStatusType get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(S2C_PlayerStatusChangeBroadcast_PlayerStatusType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<TetrisPlayerInfo> get playerInfo => $_getList(3);
}

class S2C_GameStatusChangeBroadcast extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'S2C_GameStatusChangeBroadcast', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tetris'), createEmptyInstance: create)
    ..pc<TetrisPlayerInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerInfo', $pb.PbFieldType.PM, subBuilder: TetrisPlayerInfo.create)
    ..aOM<TetrisRoomInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomInfo', subBuilder: TetrisRoomInfo.create)
    ..hasRequiredFields = false
  ;

  S2C_GameStatusChangeBroadcast._() : super();
  factory S2C_GameStatusChangeBroadcast() => create();
  factory S2C_GameStatusChangeBroadcast.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory S2C_GameStatusChangeBroadcast.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  S2C_GameStatusChangeBroadcast clone() => S2C_GameStatusChangeBroadcast()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  S2C_GameStatusChangeBroadcast copyWith(void Function(S2C_GameStatusChangeBroadcast) updates) => super.copyWith((message) => updates(message as S2C_GameStatusChangeBroadcast)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static S2C_GameStatusChangeBroadcast create() => S2C_GameStatusChangeBroadcast._();
  S2C_GameStatusChangeBroadcast createEmptyInstance() => create();
  static $pb.PbList<S2C_GameStatusChangeBroadcast> createRepeated() => $pb.PbList<S2C_GameStatusChangeBroadcast>();
  @$core.pragma('dart2js:noInline')
  static S2C_GameStatusChangeBroadcast getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<S2C_GameStatusChangeBroadcast>(create);
  static S2C_GameStatusChangeBroadcast _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TetrisPlayerInfo> get playerInfo => $_getList(0);

  @$pb.TagNumber(2)
  TetrisRoomInfo get roomInfo => $_getN(1);
  @$pb.TagNumber(2)
  set roomInfo(TetrisRoomInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomInfo() => clearField(2);
  @$pb.TagNumber(2)
  TetrisRoomInfo ensureRoomInfo() => $_ensure(1);
}

class S2C_PlayerExpressionBroadcast extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'S2C_PlayerExpressionBroadcast', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tetris'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toUser')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expressionIndex')
    ..hasRequiredFields = false
  ;

  S2C_PlayerExpressionBroadcast._() : super();
  factory S2C_PlayerExpressionBroadcast() => create();
  factory S2C_PlayerExpressionBroadcast.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory S2C_PlayerExpressionBroadcast.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  S2C_PlayerExpressionBroadcast clone() => S2C_PlayerExpressionBroadcast()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  S2C_PlayerExpressionBroadcast copyWith(void Function(S2C_PlayerExpressionBroadcast) updates) => super.copyWith((message) => updates(message as S2C_PlayerExpressionBroadcast)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static S2C_PlayerExpressionBroadcast create() => S2C_PlayerExpressionBroadcast._();
  S2C_PlayerExpressionBroadcast createEmptyInstance() => create();
  static $pb.PbList<S2C_PlayerExpressionBroadcast> createRepeated() => $pb.PbList<S2C_PlayerExpressionBroadcast>();
  @$core.pragma('dart2js:noInline')
  static S2C_PlayerExpressionBroadcast getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<S2C_PlayerExpressionBroadcast>(create);
  static S2C_PlayerExpressionBroadcast _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get toUser => $_getI64(1);
  @$pb.TagNumber(2)
  set toUser($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearToUser() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get expressionIndex => $_getSZ(2);
  @$pb.TagNumber(3)
  set expressionIndex($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpressionIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpressionIndex() => clearField(3);
}

class S2C_GridBroadcast extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'S2C_GridBroadcast', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tetris'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'frame')
    ..pc<Block>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'map', $pb.PbFieldType.PM, subBuilder: Block.create)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'width')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height')
    ..hasRequiredFields = false
  ;

  S2C_GridBroadcast._() : super();
  factory S2C_GridBroadcast() => create();
  factory S2C_GridBroadcast.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory S2C_GridBroadcast.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  S2C_GridBroadcast clone() => S2C_GridBroadcast()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  S2C_GridBroadcast copyWith(void Function(S2C_GridBroadcast) updates) => super.copyWith((message) => updates(message as S2C_GridBroadcast)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static S2C_GridBroadcast create() => S2C_GridBroadcast._();
  S2C_GridBroadcast createEmptyInstance() => create();
  static $pb.PbList<S2C_GridBroadcast> createRepeated() => $pb.PbList<S2C_GridBroadcast>();
  @$core.pragma('dart2js:noInline')
  static S2C_GridBroadcast getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<S2C_GridBroadcast>(create);
  static S2C_GridBroadcast _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get frame => $_getI64(0);
  @$pb.TagNumber(1)
  set frame($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrame() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrame() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Block> get map => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get width => $_getI64(2);
  @$pb.TagNumber(3)
  set width($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWidth() => $_has(2);
  @$pb.TagNumber(3)
  void clearWidth() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get height => $_getI64(3);
  @$pb.TagNumber(4)
  set height($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeight() => clearField(4);
}

class TetrisPlayerInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TetrisPlayerInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tetris'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iconUrl')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iconFrame')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'seatIndex', $pb.PbFieldType.OU3)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nickName')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inGame')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'online')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'auto')
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'score', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  TetrisPlayerInfo._() : super();
  factory TetrisPlayerInfo() => create();
  factory TetrisPlayerInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TetrisPlayerInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TetrisPlayerInfo clone() => TetrisPlayerInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TetrisPlayerInfo copyWith(void Function(TetrisPlayerInfo) updates) => super.copyWith((message) => updates(message as TetrisPlayerInfo)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TetrisPlayerInfo create() => TetrisPlayerInfo._();
  TetrisPlayerInfo createEmptyInstance() => create();
  static $pb.PbList<TetrisPlayerInfo> createRepeated() => $pb.PbList<TetrisPlayerInfo>();
  @$core.pragma('dart2js:noInline')
  static TetrisPlayerInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TetrisPlayerInfo>(create);
  static TetrisPlayerInfo _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get iconUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set iconUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIconUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearIconUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get iconFrame => $_getSZ(2);
  @$pb.TagNumber(3)
  set iconFrame($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIconFrame() => $_has(2);
  @$pb.TagNumber(3)
  void clearIconFrame() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get seatIndex => $_getIZ(3);
  @$pb.TagNumber(4)
  set seatIndex($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSeatIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearSeatIndex() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get nickName => $_getSZ(4);
  @$pb.TagNumber(5)
  set nickName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNickName() => $_has(4);
  @$pb.TagNumber(5)
  void clearNickName() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get inGame => $_getBF(5);
  @$pb.TagNumber(6)
  set inGame($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasInGame() => $_has(5);
  @$pb.TagNumber(6)
  void clearInGame() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get online => $_getBF(6);
  @$pb.TagNumber(7)
  set online($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOnline() => $_has(6);
  @$pb.TagNumber(7)
  void clearOnline() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get auto => $_getBF(7);
  @$pb.TagNumber(8)
  set auto($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAuto() => $_has(7);
  @$pb.TagNumber(8)
  void clearAuto() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get score => $_getIZ(8);
  @$pb.TagNumber(9)
  set score($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasScore() => $_has(8);
  @$pb.TagNumber(9)
  void clearScore() => clearField(9);
}

class TetrisRoomInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TetrisRoomInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tetris'), createEmptyInstance: create)
    ..e<TetrisGameType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomType', $pb.PbFieldType.OE, defaultOrMaker: TetrisGameType.CLASSIC, valueOf: TetrisGameType.valueOf, enumValues: TetrisGameType.values)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playerNum')
    ..e<TetrisGameStatus>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TetrisGameStatus.AWAIT, valueOf: TetrisGameStatus.valueOf, enumValues: TetrisGameStatus.values)
    ..hasRequiredFields = false
  ;

  TetrisRoomInfo._() : super();
  factory TetrisRoomInfo() => create();
  factory TetrisRoomInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TetrisRoomInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TetrisRoomInfo clone() => TetrisRoomInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TetrisRoomInfo copyWith(void Function(TetrisRoomInfo) updates) => super.copyWith((message) => updates(message as TetrisRoomInfo)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TetrisRoomInfo create() => TetrisRoomInfo._();
  TetrisRoomInfo createEmptyInstance() => create();
  static $pb.PbList<TetrisRoomInfo> createRepeated() => $pb.PbList<TetrisRoomInfo>();
  @$core.pragma('dart2js:noInline')
  static TetrisRoomInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TetrisRoomInfo>(create);
  static TetrisRoomInfo _defaultInstance;

  @$pb.TagNumber(1)
  TetrisGameType get roomType => $_getN(0);
  @$pb.TagNumber(1)
  set roomType(TetrisGameType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomType() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get playerNum => $_getI64(1);
  @$pb.TagNumber(2)
  set playerNum($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPlayerNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlayerNum() => clearField(2);

  @$pb.TagNumber(3)
  TetrisGameStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(TetrisGameStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
}

class Block extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Block', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tetris'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'opacity', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operating', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  Block._() : super();
  factory Block() => create();
  factory Block.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Block.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Block clone() => Block()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Block copyWith(void Function(Block) updates) => super.copyWith((message) => updates(message as Block)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Block create() => Block._();
  Block createEmptyInstance() => create();
  static $pb.PbList<Block> createRepeated() => $pb.PbList<Block>();
  @$core.pragma('dart2js:noInline')
  static Block getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Block>(create);
  static Block _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get opacity => $_getIZ(1);
  @$pb.TagNumber(2)
  set opacity($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOpacity() => $_has(1);
  @$pb.TagNumber(2)
  void clearOpacity() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get operating => $_getIZ(2);
  @$pb.TagNumber(3)
  set operating($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOperating() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperating() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get index => $_getIZ(3);
  @$pb.TagNumber(4)
  set index($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearIndex() => clearField(4);
}

