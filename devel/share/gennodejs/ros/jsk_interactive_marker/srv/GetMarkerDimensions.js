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

let MarkerDimensions = require('../msg/MarkerDimensions.js');

//-----------------------------------------------------------

class GetMarkerDimensionsRequest {
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
    // Serializes a message object of type GetMarkerDimensionsRequest
    // Serialize message field [target_name]
    bufferOffset = _serializer.string(obj.target_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMarkerDimensionsRequest
    let len;
    let data = new GetMarkerDimensionsRequest(null);
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
    return 'jsk_interactive_marker/GetMarkerDimensionsRequest';
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
    const resolved = new GetMarkerDimensionsRequest(null);
    if (msg.target_name !== undefined) {
      resolved.target_name = msg.target_name;
    }
    else {
      resolved.target_name = ''
    }

    return resolved;
    }
};

class GetMarkerDimensionsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dimensions = null;
    }
    else {
      if (initObj.hasOwnProperty('dimensions')) {
        this.dimensions = initObj.dimensions
      }
      else {
        this.dimensions = new MarkerDimensions();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMarkerDimensionsResponse
    // Serialize message field [dimensions]
    bufferOffset = MarkerDimensions.serialize(obj.dimensions, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMarkerDimensionsResponse
    let len;
    let data = new GetMarkerDimensionsResponse(null);
    // Deserialize message field [dimensions]
    data.dimensions = MarkerDimensions.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_interactive_marker/GetMarkerDimensionsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '742fb7645b415cf6f633f4bd78cac455';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MarkerDimensions dimensions
    
    
    ================================================================================
    MSG: jsk_interactive_marker/MarkerDimensions
    float32 x
    float32 y
    float32 z
    float32 radius
    float32 small_radius
    int32 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMarkerDimensionsResponse(null);
    if (msg.dimensions !== undefined) {
      resolved.dimensions = MarkerDimensions.Resolve(msg.dimensions)
    }
    else {
      resolved.dimensions = new MarkerDimensions()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetMarkerDimensionsRequest,
  Response: GetMarkerDimensionsResponse,
  md5sum() { return 'abc2585f72e13579d759aff3b4419630'; },
  datatype() { return 'jsk_interactive_marker/GetMarkerDimensions'; }
};
