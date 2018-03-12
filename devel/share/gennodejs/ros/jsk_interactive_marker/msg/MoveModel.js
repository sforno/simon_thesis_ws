// Auto-generated. Do not edit!

// (in-package jsk_interactive_marker.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class MoveModel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.description = null;
      this.joint_state_origin = null;
      this.joint_state_goal = null;
      this.pose_origin = null;
      this.pose_goal = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('joint_state_origin')) {
        this.joint_state_origin = initObj.joint_state_origin
      }
      else {
        this.joint_state_origin = new sensor_msgs.msg.JointState();
      }
      if (initObj.hasOwnProperty('joint_state_goal')) {
        this.joint_state_goal = initObj.joint_state_goal
      }
      else {
        this.joint_state_goal = new sensor_msgs.msg.JointState();
      }
      if (initObj.hasOwnProperty('pose_origin')) {
        this.pose_origin = initObj.pose_origin
      }
      else {
        this.pose_origin = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('pose_goal')) {
        this.pose_goal = initObj.pose_goal
      }
      else {
        this.pose_goal = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveModel
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [joint_state_origin]
    bufferOffset = sensor_msgs.msg.JointState.serialize(obj.joint_state_origin, buffer, bufferOffset);
    // Serialize message field [joint_state_goal]
    bufferOffset = sensor_msgs.msg.JointState.serialize(obj.joint_state_goal, buffer, bufferOffset);
    // Serialize message field [pose_origin]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose_origin, buffer, bufferOffset);
    // Serialize message field [pose_goal]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose_goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveModel
    let len;
    let data = new MoveModel(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [joint_state_origin]
    data.joint_state_origin = sensor_msgs.msg.JointState.deserialize(buffer, bufferOffset);
    // Deserialize message field [joint_state_goal]
    data.joint_state_goal = sensor_msgs.msg.JointState.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_origin]
    data.pose_origin = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_goal]
    data.pose_goal = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.name.length;
    length += object.description.length;
    length += sensor_msgs.msg.JointState.getMessageSize(object.joint_state_origin);
    length += sensor_msgs.msg.JointState.getMessageSize(object.joint_state_goal);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose_origin);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose_goal);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jsk_interactive_marker/MoveModel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61edcddd6ca50e876e68d4fcf06c90f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    string name
    string description
    sensor_msgs/JointState joint_state_origin
    sensor_msgs/JointState joint_state_goal
    geometry_msgs/PoseStamped pose_origin
    geometry_msgs/PoseStamped pose_goal
    
    
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
    MSG: sensor_msgs/JointState
    # This is a message that holds data to describe the state of a set of torque controlled joints. 
    #
    # The state of each joint (revolute or prismatic) is defined by:
    #  * the position of the joint (rad or m),
    #  * the velocity of the joint (rad/s or m/s) and 
    #  * the effort that is applied in the joint (Nm or N).
    #
    # Each joint is uniquely identified by its name
    # The header specifies the time at which the joint states were recorded. All the joint states
    # in one message have to be recorded at the same time.
    #
    # This message consists of a multiple arrays, one for each part of the joint state. 
    # The goal is to make each of the fields optional. When e.g. your joints have no
    # effort associated with them, you can leave the effort array empty. 
    #
    # All arrays in this message should have the same size, or be empty.
    # This is the only way to uniquely associate the joint name with the correct
    # states.
    
    
    Header header
    
    string[] name
    float64[] position
    float64[] velocity
    float64[] effort
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new MoveModel(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.joint_state_origin !== undefined) {
      resolved.joint_state_origin = sensor_msgs.msg.JointState.Resolve(msg.joint_state_origin)
    }
    else {
      resolved.joint_state_origin = new sensor_msgs.msg.JointState()
    }

    if (msg.joint_state_goal !== undefined) {
      resolved.joint_state_goal = sensor_msgs.msg.JointState.Resolve(msg.joint_state_goal)
    }
    else {
      resolved.joint_state_goal = new sensor_msgs.msg.JointState()
    }

    if (msg.pose_origin !== undefined) {
      resolved.pose_origin = geometry_msgs.msg.PoseStamped.Resolve(msg.pose_origin)
    }
    else {
      resolved.pose_origin = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.pose_goal !== undefined) {
      resolved.pose_goal = geometry_msgs.msg.PoseStamped.Resolve(msg.pose_goal)
    }
    else {
      resolved.pose_goal = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

module.exports = MoveModel;
