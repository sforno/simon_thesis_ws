// Auto-generated. Do not edit!

// (in-package rss.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RssDatum = require('./RssDatum.js');

//-----------------------------------------------------------

class RssData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_start_ns = null;
      this.duration_ms = null;
      this.mac_address = null;
      this.freq = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('time_start_ns')) {
        this.time_start_ns = initObj.time_start_ns
      }
      else {
        this.time_start_ns = 0;
      }
      if (initObj.hasOwnProperty('duration_ms')) {
        this.duration_ms = initObj.duration_ms
      }
      else {
        this.duration_ms = 0;
      }
      if (initObj.hasOwnProperty('mac_address')) {
        this.mac_address = initObj.mac_address
      }
      else {
        this.mac_address = [];
      }
      if (initObj.hasOwnProperty('freq')) {
        this.freq = initObj.freq
      }
      else {
        this.freq = [];
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RssData
    // Serialize message field [time_start_ns]
    bufferOffset = _serializer.uint64(obj.time_start_ns, buffer, bufferOffset);
    // Serialize message field [duration_ms]
    bufferOffset = _serializer.uint32(obj.duration_ms, buffer, bufferOffset);
    // Serialize message field [mac_address]
    bufferOffset = _arraySerializer.string(obj.mac_address, buffer, bufferOffset, null);
    // Serialize message field [freq]
    bufferOffset = _arraySerializer.int16(obj.freq, buffer, bufferOffset, null);
    // Serialize message field [data]
    // Serialize the length for message field [data]
    bufferOffset = _serializer.uint32(obj.data.length, buffer, bufferOffset);
    obj.data.forEach((val) => {
      bufferOffset = RssDatum.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RssData
    let len;
    let data = new RssData(null);
    // Deserialize message field [time_start_ns]
    data.time_start_ns = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [duration_ms]
    data.duration_ms = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [mac_address]
    data.mac_address = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [freq]
    data.freq = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [data]
    // Deserialize array length for message field [data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.data[i] = RssDatum.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.mac_address.forEach((val) => {
      length += 4 + val.length;
    });
    length += 2 * object.freq.length;
    object.data.forEach((val) => {
      length += RssDatum.getMessageSize(val);
    });
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rss/RssData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '98edea83815c1c0eecd2ae4d690d4548';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64      time_start_ns
    uint32      duration_ms
    string[]    mac_address
    int16[]     freq
    RssDatum[]  data
    
    ================================================================================
    MSG: rss/RssDatum
    int8[]  rss
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RssData(null);
    if (msg.time_start_ns !== undefined) {
      resolved.time_start_ns = msg.time_start_ns;
    }
    else {
      resolved.time_start_ns = 0
    }

    if (msg.duration_ms !== undefined) {
      resolved.duration_ms = msg.duration_ms;
    }
    else {
      resolved.duration_ms = 0
    }

    if (msg.mac_address !== undefined) {
      resolved.mac_address = msg.mac_address;
    }
    else {
      resolved.mac_address = []
    }

    if (msg.freq !== undefined) {
      resolved.freq = msg.freq;
    }
    else {
      resolved.freq = []
    }

    if (msg.data !== undefined) {
      resolved.data = new Array(msg.data.length);
      for (let i = 0; i < resolved.data.length; ++i) {
        resolved.data[i] = RssDatum.Resolve(msg.data[i]);
      }
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = RssData;
