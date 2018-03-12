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

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GetTransformableMarkerColorRequest {
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
    // Serializes a message object of type GetTransformableMarkerColorRequest
    // Serialize message field [target_name]
    bufferOffset = _serializer.string(obj.target_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTransformableMarkerColorRequest
    let len;
    let data = new GetTransformableMarkerColorRequest(null);
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
    return 'jsk_interactive_marker/GetTransformableMarkerColorRequest';
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
    const resolved = new GetTransformableMarkerColorRequest(null);
    if (msg.target_name !== undefined) {
      resolved.target_name = msg.target_name;
    }
    else {
      resolved.target_name = ''
    }

    return resolved;
    }
};

class GetTransformableMarkerColorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.color = null;
    }
    else {
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = new std_msgs.msg.ColorRGBA();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTransformableMarkerColorResponse
    // Serialize message field [color]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.color, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTransformableMarkerColorResponse
    let len;
    let data = new GetTransformableMarkerColorResponse(null);
    // Deserialize message field [color]
    data.color = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_interactive_marker/GetTransformableMarkerColorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e04b62b1b39cd97e873789f0bb130e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/ColorRGBA color
    
    
    ================================================================================
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTransformableMarkerColorResponse(null);
    if (msg.color !== undefined) {
      resolved.color = std_msgs.msg.ColorRGBA.Resolve(msg.color)
    }
    else {
      resolved.color = new std_msgs.msg.ColorRGBA()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetTransformableMarkerColorRequest,
  Response: GetTransformableMarkerColorResponse,
  md5sum() { return 'fe7a7c7dc2d7b081a4b282b1deff45b7'; },
  datatype() { return 'jsk_interactive_marker/GetTransformableMarkerColor'; }
};
