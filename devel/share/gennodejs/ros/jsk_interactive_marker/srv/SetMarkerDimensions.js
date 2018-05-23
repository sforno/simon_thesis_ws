// Auto-generated. Do not edit!

// (in-package jsk_interactive_marker.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MarkerDimensions = require('../msg/MarkerDimensions.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetMarkerDimensionsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_name = null;
      this.dimensions = null;
    }
    else {
      if (initObj.hasOwnProperty('target_name')) {
        this.target_name = initObj.target_name
      }
      else {
        this.target_name = '';
      }
      if (initObj.hasOwnProperty('dimensions')) {
        this.dimensions = initObj.dimensions
      }
      else {
        this.dimensions = new MarkerDimensions();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetMarkerDimensionsRequest
    // Serialize message field [target_name]
    bufferOffset = _serializer.string(obj.target_name, buffer, bufferOffset);
    // Serialize message field [dimensions]
    bufferOffset = MarkerDimensions.serialize(obj.dimensions, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetMarkerDimensionsRequest
    let len;
    let data = new SetMarkerDimensionsRequest(null);
    // Deserialize message field [target_name]
    data.target_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dimensions]
    data.dimensions = MarkerDimensions.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.target_name.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_interactive_marker/SetMarkerDimensionsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68f212be16364271f11f516c3f033749';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string target_name
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
    const resolved = new SetMarkerDimensionsRequest(null);
    if (msg.target_name !== undefined) {
      resolved.target_name = msg.target_name;
    }
    else {
      resolved.target_name = ''
    }

    if (msg.dimensions !== undefined) {
      resolved.dimensions = MarkerDimensions.Resolve(msg.dimensions)
    }
    else {
      resolved.dimensions = new MarkerDimensions()
    }

    return resolved;
    }
};

class SetMarkerDimensionsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetMarkerDimensionsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetMarkerDimensionsResponse
    let len;
    let data = new SetMarkerDimensionsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_interactive_marker/SetMarkerDimensionsResponse';
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
    const resolved = new SetMarkerDimensionsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetMarkerDimensionsRequest,
  Response: SetMarkerDimensionsResponse,
  md5sum() { return '68f212be16364271f11f516c3f033749'; },
  datatype() { return 'jsk_interactive_marker/SetMarkerDimensions'; }
};