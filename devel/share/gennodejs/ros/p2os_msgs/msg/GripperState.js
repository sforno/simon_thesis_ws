// Auto-generated. Do not edit!

// (in-package p2os_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GripState = require('./GripState.js');
let LiftState = require('./LiftState.js');

//-----------------------------------------------------------

class GripperState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.grip = null;
      this.lift = null;
    }
    else {
      if (initObj.hasOwnProperty('grip')) {
        this.grip = initObj.grip
      }
      else {
        this.grip = new GripState();
      }
      if (initObj.hasOwnProperty('lift')) {
        this.lift = initObj.lift
      }
      else {
        this.lift = new LiftState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GripperState
    // Serialize message field [grip]
    bufferOffset = GripState.serialize(obj.grip, buffer, bufferOffset);
    // Serialize message field [lift]
    bufferOffset = LiftState.serialize(obj.lift, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripperState
    let len;
    let data = new GripperState(null);
    // Deserialize message field [grip]
    data.grip = GripState.deserialize(buffer, bufferOffset);
    // Deserialize message field [lift]
    data.lift = LiftState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'p2os_msgs/GripperState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '300b38b2a4173deb725df02fa70fc70b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    GripState grip
    LiftState lift
    
    ================================================================================
    MSG: p2os_msgs/GripState
    # direction -1 is inward, +1 is outward, 0 is stationary
    uint32 state
    int32 dir
    bool inner_beam
    bool outer_beam
    bool left_contact
    bool right_contact
    
    ================================================================================
    MSG: p2os_msgs/LiftState
    # direction -1 is downard, +1 is upward, 0 is stationary
    int32 state
    int32 dir
    float32 position
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GripperState(null);
    if (msg.grip !== undefined) {
      resolved.grip = GripState.Resolve(msg.grip)
    }
    else {
      resolved.grip = new GripState()
    }

    if (msg.lift !== undefined) {
      resolved.lift = LiftState.Resolve(msg.lift)
    }
    else {
      resolved.lift = new LiftState()
    }

    return resolved;
    }
};

module.exports = GripperState;
