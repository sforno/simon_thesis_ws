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

class RemoveParentMarkerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.child_marker_name = null;
    }
    else {
      if (initObj.hasOwnProperty('child_marker_name')) {
        this.child_marker_name = initObj.child_marker_name
      }
      else {
        this.child_marker_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoveParentMarkerRequest
    // Serialize message field [child_marker_name]
    bufferOffset = _serializer.string(obj.child_marker_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoveParentMarkerRequest
    let len;
    let data = new RemoveParentMarkerRequest(null);
    // Deserialize message field [child_marker_name]
    data.child_marker_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.child_marker_name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_interactive_marker/RemoveParentMarkerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97181b161a4bd485fbd404baffdcfbf4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string child_marker_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RemoveParentMarkerRequest(null);
    if (msg.child_marker_name !== undefined) {
      resolved.child_marker_name = msg.child_marker_name;
    }
    else {
      resolved.child_marker_name = ''
    }

    return resolved;
    }
};

class RemoveParentMarkerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoveParentMarkerResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoveParentMarkerResponse
    let len;
    let data = new RemoveParentMarkerResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_interactive_marker/RemoveParentMarkerResponse';
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
    const resolved = new RemoveParentMarkerResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: RemoveParentMarkerRequest,
  Response: RemoveParentMarkerResponse,
  md5sum() { return '97181b161a4bd485fbd404baffdcfbf4'; },
  datatype() { return 'jsk_interactive_marker/RemoveParentMarker'; }
};
