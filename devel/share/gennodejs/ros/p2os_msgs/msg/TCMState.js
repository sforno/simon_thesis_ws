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

class TCMState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tcm_power = null;
    }
    else {
      if (initObj.hasOwnProperty('tcm_power')) {
        this.tcm_power = initObj.tcm_power
      }
      else {
        this.tcm_power = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TCMState
    // Serialize message field [tcm_power]
    bufferOffset = _serializer.bool(obj.tcm_power, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TCMState
    let len;
    let data = new TCMState(null);
    // Deserialize message field [tcm_power]
    data.tcm_power = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'p2os_msgs/TCMState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2bc91397a05d27a5eff6dafb47db890';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool tcm_power
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TCMState(null);
    if (msg.tcm_power !== undefined) {
      resolved.tcm_power = msg.tcm_power;
    }
    else {
      resolved.tcm_power = false
    }

    return resolved;
    }
};

module.exports = TCMState;
