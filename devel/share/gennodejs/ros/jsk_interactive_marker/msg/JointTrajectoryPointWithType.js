// Auto-generated. Do not edit!

// (in-package jsk_interactive_marker.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class JointTrajectoryPointWithType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.args = null;
      this.wait = null;
      this.positions = null;
      this.velocities = null;
      this.accelerations = null;
      this.effort = null;
      this.time_from_start = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('args')) {
        this.args = initObj.args
      }
      else {
        this.args = '';
      }
      if (initObj.hasOwnProperty('wait')) {
        this.wait = initObj.wait
      }
      else {
        this.wait = false;
      }
      if (initObj.hasOwnProperty('positions')) {
        this.positions = initObj.positions
      }
      else {
        this.positions = [];
      }
      if (initObj.hasOwnProperty('velocities')) {
        this.velocities = initObj.velocities
      }
      else {
        this.velocities = [];
      }
      if (initObj.hasOwnProperty('accelerations')) {
        this.accelerations = initObj.accelerations
      }
      else {
        this.accelerations = [];
      }
      if (initObj.hasOwnProperty('effort')) {
        this.effort = initObj.effort
      }
      else {
        this.effort = [];
      }
      if (initObj.hasOwnProperty('time_from_start')) {
        this.time_from_start = initObj.time_from_start
      }
      else {
        this.time_from_start = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointTrajectoryPointWithType
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    // Serialize message field [args]
    bufferOffset = _serializer.string(obj.args, buffer, bufferOffset);
    // Serialize message field [wait]
    bufferOffset = _serializer.bool(obj.wait, buffer, bufferOffset);
    // Serialize message field [positions]
    bufferOffset = _arraySerializer.float64(obj.positions, buffer, bufferOffset, null);
    // Serialize message field [velocities]
    bufferOffset = _arraySerializer.float64(obj.velocities, buffer, bufferOffset, null);
    // Serialize message field [accelerations]
    bufferOffset = _arraySerializer.float64(obj.accelerations, buffer, bufferOffset, null);
    // Serialize message field [effort]
    bufferOffset = _arraySerializer.float64(obj.effort, buffer, bufferOffset, null);
    // Serialize message field [time_from_start]
    bufferOffset = _serializer.duration(obj.time_from_start, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointTrajectoryPointWithType
    let len;
    let data = new JointTrajectoryPointWithType(null);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [args]
    data.args = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [wait]
    data.wait = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [positions]
    data.positions = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [velocities]
    data.velocities = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [accelerations]
    data.accelerations = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [effort]
    data.effort = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [time_from_start]
    data.time_from_start = _deserializer.duration(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.args.length;
    length += 8 * object.positions.length;
    length += 8 * object.velocities.length;
    length += 8 * object.accelerations.length;
    length += 8 * object.effort.length;
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jsk_interactive_marker/JointTrajectoryPointWithType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '990bd6a1d9e03cc634e576f569783816';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 JOINT_INTERPOLATION=0
    uint8 LINEAR_INTERPOLATION=1
    uint8 COLLISION_AVOIDANCE=2
    
    uint8 CLOSE_HAND=10
    uint8 OPEN_HAND=11
    
    int8 type
    string args
    bool wait
    
    float64[] positions
    float64[] velocities
    float64[] accelerations
    float64[] effort
    duration time_from_start
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointTrajectoryPointWithType(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.args !== undefined) {
      resolved.args = msg.args;
    }
    else {
      resolved.args = ''
    }

    if (msg.wait !== undefined) {
      resolved.wait = msg.wait;
    }
    else {
      resolved.wait = false
    }

    if (msg.positions !== undefined) {
      resolved.positions = msg.positions;
    }
    else {
      resolved.positions = []
    }

    if (msg.velocities !== undefined) {
      resolved.velocities = msg.velocities;
    }
    else {
      resolved.velocities = []
    }

    if (msg.accelerations !== undefined) {
      resolved.accelerations = msg.accelerations;
    }
    else {
      resolved.accelerations = []
    }

    if (msg.effort !== undefined) {
      resolved.effort = msg.effort;
    }
    else {
      resolved.effort = []
    }

    if (msg.time_from_start !== undefined) {
      resolved.time_from_start = msg.time_from_start;
    }
    else {
      resolved.time_from_start = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

// Constants for message
JointTrajectoryPointWithType.Constants = {
  JOINT_INTERPOLATION: 0,
  LINEAR_INTERPOLATION: 1,
  COLLISION_AVOIDANCE: 2,
  CLOSE_HAND: 10,
  OPEN_HAND: 11,
}

module.exports = JointTrajectoryPointWithType;
