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

class AIO {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.voltages_count = null;
      this.voltages = null;
    }
    else {
      if (initObj.hasOwnProperty('voltages_count')) {
        this.voltages_count = initObj.voltages_count
      }
      else {
        this.voltages_count = 0;
      }
      if (initObj.hasOwnProperty('voltages')) {
        this.voltages = initObj.voltages
      }
      else {
        this.voltages = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AIO
    // Serialize message field [voltages_count]
    bufferOffset = _serializer.uint8(obj.voltages_count, buffer, bufferOffset);
    // Serialize message field [voltages]
    bufferOffset = _arraySerializer.float32(obj.voltages, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AIO
    let len;
    let data = new AIO(null);
    // Deserialize message field [voltages_count]
    data.voltages_count = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [voltages]
    data.voltages = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.voltages.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'p2os_msgs/AIO';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '80e4ca5770a3db29064af246946ff4fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 voltages_count
    float32[] voltages
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AIO(null);
    if (msg.voltages_count !== undefined) {
      resolved.voltages_count = msg.voltages_count;
    }
    else {
      resolved.voltages_count = 0
    }

    if (msg.voltages !== undefined) {
      resolved.voltages = msg.voltages;
    }
    else {
      resolved.voltages = []
    }

    return resolved;
    }
};

module.exports = AIO;
