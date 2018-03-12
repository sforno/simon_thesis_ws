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

class MoveObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.origin = null;
      this.goal = null;
      this.graspPose = null;
    }
    else {
      if (initObj.hasOwnProperty('origin')) {
        this.origin = initObj.origin
      }
      else {
        this.origin = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('graspPose')) {
        this.graspPose = initObj.graspPose
      }
      else {
        this.graspPose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveObject
    // Serialize message field [origin]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.origin, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.goal, buffer, bufferOffset);
    // Serialize message field [graspPose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.graspPose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveObject
    let len;
    let data = new MoveObject(null);
    // Deserialize message field [origin]
    data.origin = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [graspPose]
    data.graspPose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.origin);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.goal);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jsk_interactive_marker/MoveObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '398be7a942bfa9cfc119a5f96e3dc37a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped origin
    geometry_msgs/PoseStamped goal
    geometry_msgs/Pose graspPose
    
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
    const resolved = new MoveObject(null);
    if (msg.origin !== undefined) {
      resolved.origin = geometry_msgs.msg.PoseStamped.Resolve(msg.origin)
    }
    else {
      resolved.origin = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.goal !== undefined) {
      resolved.goal = geometry_msgs.msg.PoseStamped.Resolve(msg.goal)
    }
    else {
      resolved.goal = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.graspPose !== undefined) {
      resolved.graspPose = geometry_msgs.msg.Pose.Resolve(msg.graspPose)
    }
    else {
      resolved.graspPose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = MoveObject;
