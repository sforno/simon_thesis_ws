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

class GetTypeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_name = null;
    }
    else {
      if (initObj.hasOwnProperty('target_name')) {
        this.target_name = initObj.target_name
      }
      else {
        this.target_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTypeRequest
    // Serialize message field [target_name]
    bufferOffset = _serializer.string(obj.target_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTypeRequest
    let len;
    let data = new GetTypeRequest(null);
    // Deserialize message field [target_name]
    data.target_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.target_name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_interactive_marker/GetTypeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2008933b3c7227647cbe00c74682331a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string target_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTypeRequest(null);
    if (msg.target_name !== undefined) {
      resolved.target_name = msg.target_name;
    }
    else {
      resolved.target_name = ''
    }

    return resolved;
    }
};

class GetTypeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTypeResponse
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTypeResponse
    let len;
    let data = new GetTypeResponse(null);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_interactive_marker/GetTypeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bda37decd5e3814bcc042f341d2e60a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 type
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTypeResponse(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetTypeRequest,
  Response: GetTypeResponse,
  md5sum() { return 'b2d10d8ab8b4019e557c38345217093d'; },
  datatype() { return 'jsk_interactive_marker/GetType'; }
};
