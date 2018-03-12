// Auto-generated. Do not edit!

// (in-package jsk_interactive_marker.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class MarkerPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.pose = null;
      this.marker_name = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('marker_name')) {
        this.marker_name = initObj.marker_name
      }
      else {
        this.marker_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MarkerPose
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [marker_name]
    bufferOffset = _serializer.string(obj.marker_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MarkerPose
    let len;
    let data = new MarkerPose(null);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [marker_name]
    data.marker_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    length += object.marker_name.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jsk_interactive_marker/MarkerPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbb82805055f8f87cec211c5459c476c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 GENERAL=0
    uint8 HEAD_MARKER=1
    uint8 RHAND_MARKER=2
    uint8 LHAND_MARKER=3
    uint8 RLEG_MARKER=4
    uint8 LLEG_MARKER=5
    uint8 BASE_MARKER=6
    uint8 RFINGER_MARKER=7
    uint8 LFINGER_MARKER=8
    uint8 SPHERE_MARKER=9
    
    int8 type
    geometry_msgs/PoseStamped pose
    string marker_name
    
    
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
    const resolved = new MarkerPose(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.marker_name !== undefined) {
      resolved.marker_name = msg.marker_name;
    }
    else {
      resolved.marker_name = ''
    }

    return resolved;
    }
};

// Constants for message
MarkerPose.Constants = {
  GENERAL: 0,
  HEAD_MARKER: 1,
  RHAND_MARKER: 2,
  LHAND_MARKER: 3,
  RLEG_MARKER: 4,
  LLEG_MARKER: 5,
  BASE_MARKER: 6,
  RFINGER_MARKER: 7,
  LFINGER_MARKER: 8,
  SPHERE_MARKER: 9,
}

module.exports = MarkerPose;
