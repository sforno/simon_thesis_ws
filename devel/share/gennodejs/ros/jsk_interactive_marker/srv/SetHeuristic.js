// Auto-generated. Do not edit!

// (in-package jsk_interactive_marker.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetHeuristicRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.heuristic = null;
    }
    else {
      if (initObj.hasOwnProperty('heuristic')) {
        this.heuristic = initObj.heuristic
      }
      else {
        this.heuristic = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetHeuristicRequest
    // Serialize message field [heuristic]
    bufferOffset = _serializer.string(obj.heuristic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetHeuristicRequest
    let len;
    let data = new SetHeuristicRequest(null);
    // Deserialize message field [heuristic]
    data.heuristic = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.heuristic.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_interactive_marker/SetHeuristicRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '96bf1327fac533122d937324246cbde4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string heuristic
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetHeuristicRequest(null);
    if (msg.heuristic !== undefined) {
      resolved.heuristic = msg.heuristic;
    }
    else {
      resolved.heuristic = ''
    }

    return resolved;
    }
};

class SetHeuristicResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetHeuristicResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetHeuristicResponse
    let len;
    let data = new SetHeuristicResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_interactive_marker/SetHeuristicResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetHeuristicResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetHeuristicRequest,
  Response: SetHeuristicResponse,
  md5sum() { return '96bf1327fac533122d937324246cbde4'; },
  datatype() { return 'jsk_interactive_marker/SetHeuristic'; }
};
