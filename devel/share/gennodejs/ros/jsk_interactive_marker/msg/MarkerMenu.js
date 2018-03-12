// Auto-generated. Do not edit!

// (in-package jsk_interactive_marker.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MarkerMenu {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.menu = null;
      this.type = null;
      this.marker_name = null;
    }
    else {
      if (initObj.hasOwnProperty('menu')) {
        this.menu = initObj.menu
      }
      else {
        this.menu = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('marker_name')) {
        this.marker_name = initObj.marker_name
      }
      else {
        this.marker_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MarkerMenu
    // Serialize message field [menu]
    bufferOffset = _serializer.int8(obj.menu, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    // Serialize message field [marker_name]
    bufferOffset = _serializer.string(obj.marker_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MarkerMenu
    let len;
    let data = new MarkerMenu(null);
    // Deserialize message field [menu]
    data.menu = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [marker_name]
    data.marker_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.marker_name.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jsk_interactive_marker/MarkerMenu';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '192d3b78eda584051c0d487463f7de74';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MOVE=0
    uint8 FORCE_MOVE=1
    uint8 SET_ORIGIN=2
    uint8 SET_ORIGIN_RHAND=3
    uint8 SET_ORIGIN_LHAND=4
    uint8 RESET_COORDS=5
    uint8 DELETE_FORCE=6
    uint8 PUBLISH_MARKER=7
    uint8 JOINT_MOVE=8
    uint8 RESET_JOINT=9
    
    uint8 SET_MOVE_RARM=10
    uint8 SET_MOVE_LARM=11
    uint8 SET_MOVE_ARMS=12
    uint8 MOVE_CONSTRAINT_T=13
    uint8 MOVE_CONSTRAINT_NIL=14
    uint8 IK_ROTATION_AXIS_T=15
    uint8 IK_ROTATION_AXIS_NIL=16
    uint8 USE_TORSO_T=17
    uint8 USE_TORSO_NIL=18
    int8 USE_FULLBODY=19
    
    
    uint8 START_GRASP=20
    uint8 HARF_GRASP=21
    uint8 STOP_GRASP=22
    
    uint8 HEAD_TARGET_POINT=30
    uint8 LOOK_AUTO=31
    
    uint8 MANIP_MODE=40
    uint8 PICK=41
    uint8 TOUCHIT_EXEC=42
    uint8 TOUCHIT_PREV=43
    uint8 TOUCHIT_CANCEL=44
    
    uint8 LOOK_RARM=45
    uint8 LOOK_LARM=46
    
    uint8 PLAN=50
    uint8 EXECUTE=51
    uint8 PLAN_EXECUTE=52
    uint8 CANCEL_PLAN=53
    
    uint8 GENERAL=0
    uint8 HEAD_MARKER=1
    uint8 RHAND_MARKER=2
    uint8 LHAND_MARKER=3
    uint8 RLEG_MARKER=4
    uint8 LLEG_MARKER=5
    uint8 BASE_MARKER=6
    uint8 RFINGER_MARKER=7
    uint8 LFINGER_MARKER=8
    
    int8 menu
    int8 type
    string marker_name
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MarkerMenu(null);
    if (msg.menu !== undefined) {
      resolved.menu = msg.menu;
    }
    else {
      resolved.menu = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.marker_name !== undefined) {
      resolved.marker_name = msg.marker_name;
    }
    else {
      resolved.marker_name = ''
    }

    return resolved;
    }
};

// Constants for message
MarkerMenu.Constants = {
  MOVE: 0,
  FORCE_MOVE: 1,
  SET_ORIGIN: 2,
  SET_ORIGIN_RHAND: 3,
  SET_ORIGIN_LHAND: 4,
  RESET_COORDS: 5,
  DELETE_FORCE: 6,
  PUBLISH_MARKER: 7,
  JOINT_MOVE: 8,
  RESET_JOINT: 9,
  SET_MOVE_RARM: 10,
  SET_MOVE_LARM: 11,
  SET_MOVE_ARMS: 12,
  MOVE_CONSTRAINT_T: 13,
  MOVE_CONSTRAINT_NIL: 14,
  IK_ROTATION_AXIS_T: 15,
  IK_ROTATION_AXIS_NIL: 16,
  USE_TORSO_T: 17,
  USE_TORSO_NIL: 18,
  USE_FULLBODY: 19,
  START_GRASP: 20,
  HARF_GRASP: 21,
  STOP_GRASP: 22,
  HEAD_TARGET_POINT: 30,
  LOOK_AUTO: 31,
  MANIP_MODE: 40,
  PICK: 41,
  TOUCHIT_EXEC: 42,
  TOUCHIT_PREV: 43,
  TOUCHIT_CANCEL: 44,
  LOOK_RARM: 45,
  LOOK_LARM: 46,
  PLAN: 50,
  EXECUTE: 51,
  PLAN_EXECUTE: 52,
  CANCEL_PLAN: 53,
  GENERAL: 0,
  HEAD_MARKER: 1,
  RHAND_MARKER: 2,
  LHAND_MARKER: 3,
  RLEG_MARKER: 4,
  LLEG_MARKER: 5,
  BASE_MARKER: 6,
  RFINGER_MARKER: 7,
  LFINGER_MARKER: 8,
}

module.exports = MarkerMenu;
