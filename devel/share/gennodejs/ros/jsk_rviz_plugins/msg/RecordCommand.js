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

class RecordCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
      this.target = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('target')) {
        this.target = initObj.target
      }
      else {
        this.target = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecordCommand
    // Serialize message field [command]
    bufferOffset = _serializer.int8(obj.command, buffer, bufferOffset);
    // Serialize message field [target]
    bufferOffset = _serializer.string(obj.target, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecordCommand
    let len;
    let data = new RecordCommand(null);
    // Deserialize message field [command]
    data.command = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [target]
    data.target = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.target.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jsk_rviz_plugins/RecordCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31931c62eab5500089183eef0161c139';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RECORD=0
    uint8 RECORD_STOP=1
    uint8 PLAY=2
    
    int8 command
    string target
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecordCommand(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.target !== undefined) {
      resolved.target = msg.target;
    }
    else {
      resolved.target = ''
    }

    return resolved;
    }
};

// Constants for message
RecordCommand.Constants = {
  RECORD: 0,
  RECORD_STOP: 1,
  PLAY: 2,
}

module.exports = RecordCommand;
