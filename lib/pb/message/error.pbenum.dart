///
//  Generated code. Do not modify.
//  source: message/error.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ErrorCode extends $pb.ProtobufEnum {
  static const ErrorCode Success = ErrorCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Success');
  static const ErrorCode SessionIsNil = ErrorCode._(10000, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SessionIsNil');
  static const ErrorCode OperationUserIdError = ErrorCode._(10001, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OperationUserIdError');
  static const ErrorCode ParseJwtTokenError = ErrorCode._(30000, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ParseJwtTokenError');
  static const ErrorCode UerIdIsZero = ErrorCode._(30001, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UerIdIsZero');
  static const ErrorCode ParseJwtTokenMatchError = ErrorCode._(30002, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ParseJwtTokenMatchError');
  static const ErrorCode NoFoundThisUser = ErrorCode._(30003, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NoFoundThisUser');
  static const ErrorCode CreateUserError = ErrorCode._(30004, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CreateUserError');
  static const ErrorCode OperationDbError = ErrorCode._(30005, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OperationDbError');
  static const ErrorCode UidBoundError = ErrorCode._(30006, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UidBoundError');
  static const ErrorCode TokenExpires = ErrorCode._(30007, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TokenExpires');

  static const $core.List<ErrorCode> values = <ErrorCode> [
    Success,
    SessionIsNil,
    OperationUserIdError,
    ParseJwtTokenError,
    UerIdIsZero,
    ParseJwtTokenMatchError,
    NoFoundThisUser,
    CreateUserError,
    OperationDbError,
    UidBoundError,
    TokenExpires,
  ];

  static final $core.Map<$core.int, ErrorCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ErrorCode valueOf($core.int value) => _byValue[value];

  const ErrorCode._($core.int v, $core.String n) : super(v, n);
}

