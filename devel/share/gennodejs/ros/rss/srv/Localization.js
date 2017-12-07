// Auto-generated. Do not edit!

// (in-package rss.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RssData = require('../msg/RssData.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class LocalizationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rss = null;
      this.nsamples = null;
      this.pose_array = null;
    }
    else {
      if (initObj.hasOwnProperty('rss')) {
        this.rss = initObj.rss
      }
      else {
        this.rss = [];
      }
      if (initObj.hasOwnProperty('nsamples')) {
        this.nsamples = initObj.nsamples
      }
      else {
        this.nsamples = 0;
      }
      if (initObj.hasOwnProperty('pose_array')) {
        this.pose_array = initObj.pose_array
      }
      else {
        this.pose_array = new geometry_msgs.msg.PoseArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocalizationRequest
    // Serialize message field [rss]
    // Serialize the length for message field [rss]
    bufferOffset = _serializer.uint32(obj.rss.length, buffer, bufferOffset);
    obj.rss.forEach((val) => {
      bufferOffset = RssData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [nsamples]
    bufferOffset = _serializer.int64(obj.nsamples, buffer, bufferOffset);
    // Serialize message field [pose_array]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.pose_array, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalizationRequest
    let len;
    let data = new LocalizationRequest(null);
    // Deserialize message field [rss]
    // Deserialize array length for message field [rss]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.rss = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.rss[i] = RssData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [nsamples]
    data.nsamples = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [pose_array]
    data.pose_array = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.rss.forEach((val) => {
      length += RssData.getMessageSize(val);
    });
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.pose_array);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rss/LocalizationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '75f1b979b6225c2ec66279f7c9fcdf68';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    
    RssData[] rss
    int64 nsamples
    geometry_msgs/PoseArray pose_array
    
    
    ================================================================================
    MSG: rss/RssData
    uint64      time_start_ns
    uint32      duration_ms
    string[]    mac_address
    int16[]     freq
    RssDatum[]  data
    
    ================================================================================
    MSG: rss/RssDatum
    int8[]  rss
    
    ================================================================================
    MSG: geometry_msgs/PoseArray
    # An array of poses with a header for global reference.
    
    Header header
    
    Pose[] poses
    
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
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocalizationRequest(null);
    if (msg.rss !== undefined) {
      resolved.rss = new Array(msg.rss.length);
      for (let i = 0; i < resolved.rss.length; ++i) {
        resolved.rss[i] = RssData.Resolve(msg.rss[i]);
      }
    }
    else {
      resolved.rss = []
    }

    if (msg.nsamples !== undefined) {
      resolved.nsamples = msg.nsamples;
    }
    else {
      resolved.nsamples = 0
    }

    if (msg.pose_array !== undefined) {
      resolved.pose_array = geometry_msgs.msg.PoseArray.Resolve(msg.pose_array)
    }
    else {
      resolved.pose_array = new geometry_msgs.msg.PoseArray()
    }

    return resolved;
    }
};

class LocalizationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_array = null;
      this.weights = null;
      this.prob_mesh = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_array')) {
        this.pose_array = initObj.pose_array
      }
      else {
        this.pose_array = new geometry_msgs.msg.PoseArray();
      }
      if (initObj.hasOwnProperty('weights')) {
        this.weights = initObj.weights
      }
      else {
        this.weights = [];
      }
      if (initObj.hasOwnProperty('prob_mesh')) {
        this.prob_mesh = initObj.prob_mesh
      }
      else {
        this.prob_mesh = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocalizationResponse
    // Serialize message field [pose_array]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.pose_array, buffer, bufferOffset);
    // Serialize message field [weights]
    bufferOffset = _arraySerializer.float64(obj.weights, buffer, bufferOffset, null);
    // Serialize message field [prob_mesh]
    bufferOffset = _arraySerializer.float64(obj.prob_mesh, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalizationResponse
    let len;
    let data = new LocalizationResponse(null);
    // Deserialize message field [pose_array]
    data.pose_array = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [weights]
    data.weights = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [prob_mesh]
    data.prob_mesh = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.pose_array);
    length += 8 * object.weights.length;
    length += 8 * object.prob_mesh.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rss/LocalizationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d22e81275cae00af4cd4542b46c6f30';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    geometry_msgs/PoseArray pose_array
    float64[] weights
    float64[] prob_mesh
    
    
    ================================================================================
    MSG: geometry_msgs/PoseArray
    # An array of poses with a header for global reference.
    
    Header header
    
    Pose[] poses
    
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
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocalizationResponse(null);
    if (msg.pose_array !== undefined) {
      resolved.pose_array = geometry_msgs.msg.PoseArray.Resolve(msg.pose_array)
    }
    else {
      resolved.pose_array = new geometry_msgs.msg.PoseArray()
    }

    if (msg.weights !== undefined) {
      resolved.weights = msg.weights;
    }
    else {
      resolved.weights = []
    }

    if (msg.prob_mesh !== undefined) {
      resolved.prob_mesh = msg.prob_mesh;
    }
    else {
      resolved.prob_mesh = []
    }

    return resolved;
    }
};

module.exports = {
  Request: LocalizationRequest,
  Response: LocalizationResponse,
  md5sum() { return '657eb31c75cbeea4823f2ec9c2b4e987'; },
  datatype() { return 'rss/Localization'; }
};
