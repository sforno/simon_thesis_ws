// Auto-generated. Do not edit!

// (in-package rss.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RssDatum {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rss = null;
    }
    else {
      if (initObj.hasOwnProperty('rss')) {
        this.rss = initObj.rss
      }
      else {
        this.rss = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RssDatum
    // Serialize message field [rss]
    bufferOffset = _arraySerializer.int8(obj.rss, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RssDatum
    let len;
    let data = new RssDatum(null);
    // Deserialize message field [rss]
    data.rss = _arrayDeserializer.int8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.rss.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rss/RssDatum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '30f9e1fe2cc18569f41e9246340d3ec5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8[]  rss
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RssDatum(null);
    if (msg.rss !== undefined) {
      resolved.rss = msg.rss;
    }
    else {
      resolved.rss = []
    }

    return resolved;
    }
};

module.exports = RssDatum;
