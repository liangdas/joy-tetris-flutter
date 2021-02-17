///
//  Generated code. Do not modify.
//  source: message/tetris.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const TetrisGameStatus$json = const {
  '1': 'TetrisGameStatus',
  '2': const [
    const {'1': 'AWAIT', '2': 0},
    const {'1': 'BEGIN', '2': 1},
    const {'1': 'SUSPEND', '2': 3},
    const {'1': 'GAMEOVER', '2': 4},
  ],
};

const TetrisGameType$json = const {
  '1': 'TetrisGameType',
  '2': const [
    const {'1': 'CLASSIC', '2': 0},
    const {'1': 'QUICK', '2': 1},
  ],
};

const S2S_Tetris_Create$json = const {
  '1': 'S2S_Tetris_Create',
  '2': const [
    const {'1': 'game_type', '3': 1, '4': 1, '5': 14, '6': '.tetris.TetrisGameType', '10': 'gameType'},
    const {'1': 'player_num', '3': 2, '4': 1, '5': 3, '10': 'playerNum'},
    const {'1': 'gear', '3': 3, '4': 1, '5': 3, '10': 'gear'},
    const {'1': 'use_props', '3': 4, '4': 1, '5': 8, '10': 'useProps'},
    const {'1': 'private', '3': 5, '4': 1, '5': 8, '10': 'private'},
    const {'1': 'user_list', '3': 6, '4': 3, '5': 3, '10': 'userList'},
    const {'1': 'version', '3': 7, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'owner', '3': 8, '4': 1, '5': 3, '10': 'owner'},
    const {'1': 'room_id', '3': 9, '4': 1, '5': 9, '10': 'roomId'},
  ],
};

const S2S_Tetris_Create_Debug$json = const {
  '1': 'S2S_Tetris_Create_Debug',
  '2': const [
    const {'1': 'game_type', '3': 1, '4': 1, '5': 14, '6': '.tetris.TetrisGameType', '10': 'gameType'},
    const {'1': 'player_num', '3': 2, '4': 1, '5': 3, '10': 'playerNum'},
    const {'1': 'gear', '3': 3, '4': 1, '5': 3, '10': 'gear'},
    const {'1': 'use_props', '3': 4, '4': 1, '5': 8, '10': 'useProps'},
    const {'1': 'private', '3': 5, '4': 1, '5': 8, '10': 'private'},
    const {'1': 'user_list', '3': 6, '4': 3, '5': 3, '10': 'userList'},
    const {'1': 'version', '3': 7, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'owner', '3': 8, '4': 1, '5': 3, '10': 'owner'},
    const {'1': 'room_id', '3': 9, '4': 1, '5': 9, '10': 'roomId'},
  ],
};

const S2R_Tetris_Create$json = const {
  '1': 'S2R_Tetris_Create',
  '2': const [
    const {'1': 'game_type', '3': 1, '4': 1, '5': 14, '6': '.tetris.TetrisGameType', '10': 'gameType'},
    const {'1': 'player_num', '3': 2, '4': 1, '5': 3, '10': 'playerNum'},
    const {'1': 'gear', '3': 3, '4': 1, '5': 3, '10': 'gear'},
    const {'1': 'use_props', '3': 4, '4': 1, '5': 8, '10': 'useProps'},
    const {'1': 'private', '3': 5, '4': 1, '5': 8, '10': 'private'},
    const {'1': 'user_list', '3': 6, '4': 3, '5': 3, '10': 'userList'},
    const {'1': 'version', '3': 7, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'owner', '3': 8, '4': 1, '5': 3, '10': 'owner'},
    const {'1': 'room_id', '3': 9, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'short_id', '3': 10, '4': 1, '5': 9, '10': 'shortId'},
  ],
};

const C2S_Tetris$json = const {
  '1': 'C2S_Tetris',
  '2': const [
    const {'1': 'msg_type', '3': 1, '4': 1, '5': 9, '10': 'msgType'},
    const {'1': 'room_id', '3': 2, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'enter_room_c2s', '3': 3, '4': 1, '5': 11, '6': '.game.C2S_EnterRoom', '10': 'enterRoomC2s'},
    const {'1': 'exit_room_c2s', '3': 4, '4': 1, '5': 11, '6': '.game.C2S_ExitRoom', '10': 'exitRoomC2s'},
    const {'1': 'sync_info_c2s', '3': 5, '4': 1, '5': 11, '6': '.game.C2S_SyncInfo', '10': 'syncInfoC2s'},
    const {'1': 'heartbeat_c2s', '3': 6, '4': 1, '5': 11, '6': '.tetris.C2S_Heartbeat', '10': 'heartbeatC2s'},
    const {'1': 'player_expression_c2s', '3': 7, '4': 1, '5': 11, '6': '.tetris.C2S_PlayerExpression', '10': 'playerExpressionC2s'},
    const {'1': 'player_operation_skeleton_c2s', '3': 8, '4': 1, '5': 11, '6': '.tetris.C2S_OperationSkeleton', '10': 'playerOperationSkeletonC2s'},
    const {'1': 'player_select_skeleton_c2s', '3': 9, '4': 1, '5': 11, '6': '.tetris.C2S_SelectSkeleton', '10': 'playerSelectSkeletonC2s'},
  ],
};

const C2S_PlayerExpression$json = const {
  '1': 'C2S_PlayerExpression',
  '2': const [
    const {'1': 'express_index', '3': 1, '4': 1, '5': 9, '10': 'expressIndex'},
    const {'1': 'to_user', '3': 2, '4': 1, '5': 3, '10': 'toUser'},
  ],
};

const C2S_Heartbeat$json = const {
  '1': 'C2S_Heartbeat',
  '2': const [
    const {'1': 'hold', '3': 1, '4': 1, '5': 13, '10': 'hold'},
  ],
};

const C2S_OperationSkeleton$json = const {
  '1': 'C2S_OperationSkeleton',
  '2': const [
    const {'1': 'opcode', '3': 1, '4': 1, '5': 9, '10': 'opcode'},
    const {'1': 'Frame', '3': 2, '4': 1, '5': 13, '10': 'Frame'},
  ],
};

const C2S_SelectSkeleton$json = const {
  '1': 'C2S_SelectSkeleton',
  '2': const [
    const {'1': 'Frame', '3': 1, '4': 1, '5': 13, '10': 'Frame'},
    const {'1': 'skeleton_type', '3': 2, '4': 1, '5': 9, '10': 'skeletonType'},
  ],
};

const S2C_Tetris$json = const {
  '1': 'S2C_Tetris',
  '2': const [
    const {'1': 'room_id', '3': 1, '4': 1, '5': 9, '10': 'roomId'},
    const {'1': 'msg_type', '3': 2, '4': 1, '5': 13, '10': 'msgType'},
    const {'1': 'msg_id', '3': 3, '4': 1, '5': 13, '10': 'msgId'},
    const {'1': 'player_status_change_s2c_broadcast', '3': 4, '4': 1, '5': 11, '6': '.tetris.S2C_PlayerStatusChangeBroadcast', '10': 'playerStatusChangeS2cBroadcast'},
    const {'1': 'game_status_change_s2c_broadcast', '3': 5, '4': 1, '5': 11, '6': '.tetris.S2C_GameStatusChangeBroadcast', '10': 'gameStatusChangeS2cBroadcast'},
    const {'1': 'player_expression_s2c_broadcast', '3': 6, '4': 1, '5': 11, '6': '.tetris.S2C_PlayerExpressionBroadcast', '10': 'playerExpressionS2cBroadcast'},
    const {'1': 'grid_s2c_broadcast', '3': 7, '4': 1, '5': 11, '6': '.tetris.S2C_GridBroadcast', '10': 'gridS2cBroadcast'},
  ],
};

const S2C_PlayerStatusChangeBroadcast$json = const {
  '1': 'S2C_PlayerStatusChangeBroadcast',
  '2': const [
    const {'1': 'seat_index', '3': 1, '4': 1, '5': 13, '10': 'seatIndex'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'status', '3': 3, '4': 1, '5': 14, '6': '.tetris.S2C_PlayerStatusChangeBroadcast.PlayerStatusType', '10': 'status'},
    const {'1': 'player_info', '3': 4, '4': 3, '5': 11, '6': '.tetris.TetrisPlayerInfo', '10': 'playerInfo'},
  ],
  '4': const [S2C_PlayerStatusChangeBroadcast_PlayerStatusType$json],
};

const S2C_PlayerStatusChangeBroadcast_PlayerStatusType$json = const {
  '1': 'PlayerStatusType',
  '2': const [
    const {'1': 'ENTER', '2': 0},
    const {'1': 'EXIT', '2': 1},
    const {'1': 'ONLINE', '2': 2},
    const {'1': 'OFFLINE', '2': 3},
  ],
};

const S2C_GameStatusChangeBroadcast$json = const {
  '1': 'S2C_GameStatusChangeBroadcast',
  '2': const [
    const {'1': 'player_info', '3': 1, '4': 3, '5': 11, '6': '.tetris.TetrisPlayerInfo', '10': 'playerInfo'},
    const {'1': 'room_info', '3': 2, '4': 1, '5': 11, '6': '.tetris.TetrisRoomInfo', '10': 'roomInfo'},
  ],
};

const S2C_PlayerExpressionBroadcast$json = const {
  '1': 'S2C_PlayerExpressionBroadcast',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'to_user', '3': 2, '4': 1, '5': 3, '10': 'toUser'},
    const {'1': 'expression_index', '3': 3, '4': 1, '5': 9, '10': 'expressionIndex'},
  ],
};

const S2C_GridBroadcast$json = const {
  '1': 'S2C_GridBroadcast',
  '2': const [
    const {'1': 'frame', '3': 1, '4': 1, '5': 3, '10': 'frame'},
    const {'1': 'map', '3': 2, '4': 3, '5': 11, '6': '.tetris.Block', '10': 'map'},
    const {'1': 'width', '3': 3, '4': 1, '5': 3, '10': 'width'},
    const {'1': 'height', '3': 4, '4': 1, '5': 3, '10': 'height'},
  ],
};

const TetrisPlayerInfo$json = const {
  '1': 'TetrisPlayerInfo',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'icon_url', '3': 2, '4': 1, '5': 9, '10': 'iconUrl'},
    const {'1': 'icon_frame', '3': 3, '4': 1, '5': 9, '10': 'iconFrame'},
    const {'1': 'seat_index', '3': 4, '4': 1, '5': 13, '10': 'seatIndex'},
    const {'1': 'nick_name', '3': 5, '4': 1, '5': 9, '10': 'nickName'},
    const {'1': 'in_game', '3': 6, '4': 1, '5': 8, '10': 'inGame'},
    const {'1': 'online', '3': 7, '4': 1, '5': 8, '10': 'online'},
    const {'1': 'auto', '3': 8, '4': 1, '5': 8, '10': 'auto'},
    const {'1': 'score', '3': 9, '4': 1, '5': 13, '10': 'score'},
  ],
};

const TetrisRoomInfo$json = const {
  '1': 'TetrisRoomInfo',
  '2': const [
    const {'1': 'room_type', '3': 1, '4': 1, '5': 14, '6': '.tetris.TetrisGameType', '10': 'roomType'},
    const {'1': 'player_num', '3': 2, '4': 1, '5': 3, '10': 'playerNum'},
    const {'1': 'status', '3': 3, '4': 1, '5': 14, '6': '.tetris.TetrisGameStatus', '10': 'status'},
  ],
};

const Block$json = const {
  '1': 'Block',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 13, '10': 'value'},
    const {'1': 'opacity', '3': 2, '4': 1, '5': 13, '10': 'opacity'},
    const {'1': 'operating', '3': 3, '4': 1, '5': 13, '10': 'operating'},
    const {'1': 'index', '3': 4, '4': 1, '5': 13, '10': 'index'},
  ],
};

