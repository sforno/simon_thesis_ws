// Auto-generated. Do not edit!

// (in-package jsk_rviz_plugins.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ObjectFitCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectFitCommand
    // Serialize message field [command]
    bufferOffset = _serializer.int8(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectFitCommand
    let len;
    let data = new ObjectFitCommand(null);
    // Deserialize message field [command]
    data.command = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jsk_rviz_plugins/ObjectFitCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aaf37eac6a6717d09d438978a4117776';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FIT=0
    uint8 NEAR=1
    uint8 OTHER=2
    uint8 REVERSE_FIT=3
    uint8 REVERSE_NEAR=4
    uint8 REVERSE_OTHER=5
    
    int8 command
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectFitCommand(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    return resolved;
    }
};

// Constants for message
ObjectFitCommand.Constants = {
  FIT: 0,
  NEAR: 1,
  OTHER: 2,
  REVERSE_FIT: 3,
  REVERSE_NEAR: 4,
  REVERSE_OTHER: 5,
}

module.exports = ObjectFitCommand;
