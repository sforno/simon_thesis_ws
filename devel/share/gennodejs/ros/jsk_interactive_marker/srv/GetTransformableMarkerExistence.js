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

class GetTransformableMarkerExistenceRequest {
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
    // Serializes a message object of type GetTransformableMarkerExistenceRequest
    // Serialize message field [target_name]
    bufferOffset = _serializer.string(obj.target_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTransformableMarkerExistenceRequest
    let len;
    let data = new GetTransformableMarkerExistenceRequest(null);
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
    return 'jsk_interactive_marker/GetTransformableMarkerExistenceRequest';
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
    const resolved = new GetTransformableMarkerExistenceRequest(null);
    if (msg.target_name !== undefined) {
      resolved.target_name = msg.target_name;
    }
    else {
      resolved.target_name = ''
    }

    return resolved;
    }
};

class GetTransformableMarkerExistenceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.existence = null;
    }
    else {
      if (initObj.hasOwnProperty('existence')) {
        this.existence = initObj.existence
      }
      else {
        this.existence = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTransformableMarkerExistenceResponse
    // Serialize message field [existence]
    bufferOffset = _serializer.bool(obj.existence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTransformableMarkerExistenceResponse
    let len;
    let data = new GetTransformableMarkerExistenceResponse(null);
    // Deserialize message field [existence]
    data.existence = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_interactive_marker/GetTransformableMarkerExistenceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09ae207b2bf8af13a88dd5fd7b14cb66';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool existence
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTransformableMarkerExistenceResponse(null);
    if (msg.existence !== undefined) {
      resolved.existence = msg.existence;
    }
    else {
      resolved.existence = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GetTransformableMarkerExistenceRequest,
  Response: GetTransformableMarkerExistenceResponse,
  md5sum() { return 'd5188923e69738836fa60c2cc3c5aa81'; },
  datatype() { return 'jsk_interactive_marker/GetTransformableMarkerExistence'; }
};
