// Auto-generated. Do not edit!

// (in-package p2os_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GripState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.dir = null;
      this.inner_beam = null;
      this.outer_beam = null;
      this.left_contact = null;
      this.right_contact = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('dir')) {
        this.dir = initObj.dir
      }
      else {
        this.dir = 0;
      }
      if (initObj.hasOwnProperty('inner_beam')) {
        this.inner_beam = initObj.inner_beam
      }
      else {
        this.inner_beam = false;
      }
      if (initObj.hasOwnProperty('outer_beam')) {
        this.outer_beam = initObj.outer_beam
      }
      else {
        this.outer_beam = false;
      }
      if (initObj.hasOwnProperty('left_contact')) {
        this.left_contact = initObj.left_contact
      }
      else {
        this.left_contact = false;
      }
      if (initObj.hasOwnProperty('right_contact')) {
        this.right_contact = initObj.right_contact
      }
      else {
        this.right_contact = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GripState
    // Serialize message field [state]
    bufferOffset = _serializer.uint32(obj.state, buffer, bufferOffset);
    // Serialize message field [dir]
    bufferOffset = _serializer.int32(obj.dir, buffer, bufferOffset);
    // Serialize message field [inner_beam]
    bufferOffset = _serializer.bool(obj.inner_beam, buffer, bufferOffset);
    // Serialize message field [outer_beam]
    bufferOffset = _serializer.bool(obj.outer_beam, buffer, bufferOffset);
    // Serialize message field [left_contact]
    bufferOffset = _serializer.bool(obj.left_contact, buffer, bufferOffset);
    // Serialize message field [right_contact]
    bufferOffset = _serializer.bool(obj.right_contact, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripState
    let len;
    let data = new GripState(null);
    // Deserialize message field [state]
    data.state = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [dir]
    data.dir = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [inner_beam]
    data.inner_beam = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [outer_beam]
    data.outer_beam = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [left_contact]
    data.left_contact = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_contact]
    data.right_contact = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'p2os_msgs/GripState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '370eb3507be0ed1043be50a3da3a07c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # direction -1 is inward, +1 is outward, 0 is stationary
    uint32 state
    int32 dir
    bool inner_beam
    bool outer_beam
    bool left_contact
    bool right_contact
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GripState(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.dir !== undefined) {
      resolved.dir = msg.dir;
    }
    else {
      resolved.dir = 0
    }

    if (msg.inner_beam !== undefined) {
      resolved.inner_beam = msg.inner_beam;
    }
    else {
      resolved.inner_beam = false
    }

    if (msg.outer_beam !== undefined) {
      resolved.outer_beam = msg.outer_beam;
    }
    else {
      resolved.outer_beam = false
    }

    if (msg.left_contact !== undefined) {
      resolved.left_contact = msg.left_contact;
    }
    else {
      resolved.left_contact = false
    }

    if (msg.right_contact !== undefined) {
      resolved.right_contact = msg.right_contact;
    }
    else {
      resolved.right_contact = false
    }

    return resolved;
    }
};

module.exports = GripState;
