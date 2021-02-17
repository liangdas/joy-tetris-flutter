///
//  Generated code. Do not modify.
//  source: message/tetris.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class TetrisGameStatus extends $pb.ProtobufEnum {
  static const TetrisGameStatus AWAIT = TetrisGameStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AWAIT');
  static const TetrisGameStatus BEGIN = TetrisGameStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BEGIN');
  static const TetrisGameStatus SUSPEND = TetrisGameStatus._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUSPEND');
  static const TetrisGameStatus GAMEOVER = TetrisGameStatus._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GAMEOVER');

  static const $core.List<TetrisGameStatus> values = <TetrisGameStatus> [
    AWAIT,
    BEGIN,
    SUSPEND,
    GAMEOVER,
  ];

  static final $core.Map<$core.int, TetrisGameStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TetrisGameStatus valueOf($core.int value) => _byValue[value];

  const TetrisGameStatus._($core.int v, $core.String n) : super(v, n);
}

class TetrisGameType extends $pb.ProtobufEnum {
  static const TetrisGameType CLASSIC = TetrisGameType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CLASSIC');
  static const TetrisGameType QUICK = TetrisGameType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'QUICK');

  static const $core.List<TetrisGameType> values = <TetrisGameType> [
    CLASSIC,
    QUICK,
  ];

  static final $core.Map<$core.int, TetrisGameType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TetrisGameType valueOf($core.int value) => _byValue[value];

  const TetrisGameType._($core.int v, $core.String n) : super(v, n);
}

class S2C_PlayerStatusChangeBroadcast_PlayerStatusType extends $pb.ProtobufEnum {
  static const S2C_PlayerStatusChangeBroadcast_PlayerStatusType ENTER = S2C_PlayerStatusChangeBroadcast_PlayerStatusType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ENTER');
  static const S2C_PlayerStatusChangeBroadcast_PlayerStatusType EXIT = S2C_PlayerStatusChangeBroadcast_PlayerStatusType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXIT');
  static const S2C_PlayerStatusChangeBroadcast_PlayerStatusType ONLINE = S2C_PlayerStatusChangeBroadcast_PlayerStatusType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ONLINE');
  static const S2C_PlayerStatusChangeBroadcast_PlayerStatusType OFFLINE = S2C_PlayerStatusChangeBroadcast_PlayerStatusType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OFFLINE');

  static const $core.List<S2C_PlayerStatusChangeBroadcast_PlayerStatusType> values = <S2C_PlayerStatusChangeBroadcast_PlayerStatusType> [
    ENTER,
    EXIT,
    ONLINE,
    OFFLINE,
  ];

  static final $core.Map<$core.int, S2C_PlayerStatusChangeBroadcast_PlayerStatusType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static S2C_PlayerStatusChangeBroadcast_PlayerStatusType valueOf($core.int value) => _byValue[value];

  const S2C_PlayerStatusChangeBroadcast_PlayerStatusType._($core.int v, $core.String n) : super(v, n);
}

