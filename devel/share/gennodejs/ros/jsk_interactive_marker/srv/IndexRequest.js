// Auto-generated. Do not edit!

// (in-package jsk_interactive_marker.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let jsk_recognition_msgs = _finder('jsk_recognition_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class IndexRequestRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index = null;
    }
    else {
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = new jsk_recognition_msgs.msg.Int32Stamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IndexRequestRequest
    // Serialize message field [index]
    bufferOffset = jsk_recognition_msgs.msg.Int32Stamped.serialize(obj.index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IndexRequestRequest
    let len;
    let data = new IndexRequestRequest(null);
    // Deserialize message field [index]
    data.index = jsk_recognition_msgs.msg.Int32Stamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += jsk_recognition_msgs.msg.Int32Stamped.getMessageSize(object.index);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_interactive_marker/IndexRequestRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7767d85a4611e638acb5e4f67adbc5a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    jsk_recognition_msgs/Int32Stamped index
    
    ================================================================================
    MSG: jsk_recognition_msgs/Int32Stamped
    Header header
    int32 data
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IndexRequestRequest(null);
    if (msg.index !== undefined) {
      resolved.index = jsk_recognition_msgs.msg.Int32Stamped.Resolve(msg.index)
    }
    else {
      resolved.index = new jsk_recognition_msgs.msg.Int32Stamped()
    }

    return resolved;
    }
};

class IndexRequestResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IndexRequestResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IndexRequestResponse
    let len;
    let data = new IndexRequestResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_interactive_marker/IndexRequestResponse';
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
    const resolved = new IndexRequestResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: IndexRequestRequest,
  Response: IndexRequestResponse,
  md5sum() { return 'e7767d85a4611e638acb5e4f67adbc5a'; },
  datatype() { return 'jsk_interactive_marker/IndexRequest'; }
};
