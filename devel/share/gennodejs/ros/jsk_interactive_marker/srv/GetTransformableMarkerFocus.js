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

class GetTransformableMarkerFocusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTransformableMarkerFocusRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTransformableMarkerFocusRequest
    let len;
    let data = new GetTransformableMarkerFocusRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_interactive_marker/GetTransformableMarkerFocusRequest';
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
    const resolved = new GetTransformableMarkerFocusRequest(null);
    return resolved;
    }
};

class GetTransformableMarkerFocusResponse {
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
    // Serializes a message object of type GetTransformableMarkerFocusResponse
    // Serialize message field [target_name]
    bufferOffset = _serializer.string(obj.target_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTransformableMarkerFocusResponse
    let len;
    let data = new GetTransformableMarkerFocusResponse(null);
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
    return 'jsk_interactive_marker/GetTransformableMarkerFocusResponse';
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
    const resolved = new GetTransformableMarkerFocusResponse(null);
    if (msg.target_name !== undefined) {
      resolved.target_name = msg.target_name;
    }
    else {
      resolved.target_name = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetTransformableMarkerFocusRequest,
  Response: GetTransformableMarkerFocusResponse,
  md5sum() { return '2008933b3c7227647cbe00c74682331a'; },
  datatype() { return 'jsk_interactive_marker/GetTransformableMarkerFocus'; }
};
