// Auto-generated. Do not edit!

// (in-package jsk_interactive_marker.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SnapFootPrintRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input_pose = null;
      this.lleg_pose = null;
      this.rleg_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('input_pose')) {
        this.input_pose = initObj.input_pose
      }
      else {
        this.input_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('lleg_pose')) {
        this.lleg_pose = initObj.lleg_pose
      }
      else {
        this.lleg_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('rleg_pose')) {
        this.rleg_pose = initObj.rleg_pose
      }
      else {
        this.rleg_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SnapFootPrintRequest
    // Serialize message field [input_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.input_pose, buffer, bufferOffset);
    // Serialize message field [lleg_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.lleg_pose, buffer, bufferOffset);
    // Serialize message field [rleg_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.rleg_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SnapFootPrintRequest
    let len;
    let data = new SnapFootPrintRequest(null);
    // Deserialize message field [input_pose]
    data.input_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [lleg_pose]
    data.lleg_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [rleg_pose]
    data.rleg_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.input_pose);
    return length + 112;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_interactive_marker/SnapFootPrintRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07fc9b79352f12bc13742f589662de86';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped input_pose
    geometry_msgs/Pose lleg_pose
    geometry_msgs/Pose rleg_pose
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new SnapFootPrintRequest(null);
    if (msg.input_pose !== undefined) {
      resolved.input_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.input_pose)
    }
    else {
      resolved.input_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.lleg_pose !== undefined) {
      resolved.lleg_pose = geometry_msgs.msg.Pose.Resolve(msg.lleg_pose)
    }
    else {
      resolved.lleg_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.rleg_pose !== undefined) {
      resolved.rleg_pose = geometry_msgs.msg.Pose.Resolve(msg.rleg_pose)
    }
    else {
      resolved.rleg_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

class SnapFootPrintResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.snapped_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('snapped_pose')) {
        this.snapped_pose = initObj.snapped_pose
      }
      else {
        this.snapped_pose = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SnapFootPrintResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [snapped_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.snapped_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SnapFootPrintResponse
    let len;
    let data = new SnapFootPrintResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [snapped_pose]
    data.snapped_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.snapped_pose);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_interactive_marker/SnapFootPrintResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a900428084c91b5e6bdb3a3c62cb401d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    geometry_msgs/PoseStamped snapped_pose
    
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new SnapFootPrintResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.snapped_pose !== undefined) {
      resolved.snapped_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.snapped_pose)
    }
    else {
      resolved.snapped_pose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

module.exports = {
  Request: SnapFootPrintRequest,
  Response: SnapFootPrintResponse,
  md5sum() { return 'e5091889756b723fad89a5ee8ac81396'; },
  datatype() { return 'jsk_interactive_marker/SnapFootPrint'; }
};
