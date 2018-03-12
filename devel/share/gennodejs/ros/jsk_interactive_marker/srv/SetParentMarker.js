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

class SetParentMarkerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.parent_topic_name = null;
      this.parent_marker_name = null;
      this.child_marker_name = null;
    }
    else {
      if (initObj.hasOwnProperty('parent_topic_name')) {
        this.parent_topic_name = initObj.parent_topic_name
      }
      else {
        this.parent_topic_name = '';
      }
      if (initObj.hasOwnProperty('parent_marker_name')) {
        this.parent_marker_name = initObj.parent_marker_name
      }
      else {
        this.parent_marker_name = '';
      }
      if (initObj.hasOwnProperty('child_marker_name')) {
        this.child_marker_name = initObj.child_marker_name
      }
      else {
        this.child_marker_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetParentMarkerRequest
    // Serialize message field [parent_topic_name]
    bufferOffset = _serializer.string(obj.parent_topic_name, buffer, bufferOffset);
    // Serialize message field [parent_marker_name]
    bufferOffset = _serializer.string(obj.parent_marker_name, buffer, bufferOffset);
    // Serialize message field [child_marker_name]
    bufferOffset = _serializer.string(obj.child_marker_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetParentMarkerRequest
    let len;
    let data = new SetParentMarkerRequest(null);
    // Deserialize message field [parent_topic_name]
    data.parent_topic_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [parent_marker_name]
    data.parent_marker_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [child_marker_name]
    data.child_marker_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.parent_topic_name.length;
    length += object.parent_marker_name.length;
    length += object.child_marker_name.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_interactive_marker/SetParentMarkerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0fbeb5790154b3ebc3c1cc4917de6fcc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string parent_topic_name
    string parent_marker_name
    string child_marker_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetParentMarkerRequest(null);
    if (msg.parent_topic_name !== undefined) {
      resolved.parent_topic_name = msg.parent_topic_name;
    }
    else {
      resolved.parent_topic_name = ''
    }

    if (msg.parent_marker_name !== undefined) {
      resolved.parent_marker_name = msg.parent_marker_name;
    }
    else {
      resolved.parent_marker_name = ''
    }

    if (msg.child_marker_name !== undefined) {
      resolved.child_marker_name = msg.child_marker_name;
    }
    else {
      resolved.child_marker_name = ''
    }

    return resolved;
    }
};

class SetParentMarkerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetParentMarkerResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetParentMarkerResponse
    let len;
    let data = new SetParentMarkerResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_interactive_marker/SetParentMarkerResponse';
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
    const resolved = new SetParentMarkerResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetParentMarkerRequest,
  Response: SetParentMarkerResponse,
  md5sum() { return '0fbeb5790154b3ebc3c1cc4917de6fcc'; },
  datatype() { return 'jsk_interactive_marker/SetParentMarker'; }
};
