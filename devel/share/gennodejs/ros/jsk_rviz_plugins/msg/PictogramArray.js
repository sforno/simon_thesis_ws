// Auto-generated. Do not edit!

// (in-package jsk_rviz_plugins.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Pictogram = require('./Pictogram.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PictogramArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pictograms = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pictograms')) {
        this.pictograms = initObj.pictograms
      }
      else {
        this.pictograms = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PictogramArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pictograms]
    // Serialize the length for message field [pictograms]
    bufferOffset = _serializer.uint32(obj.pictograms.length, buffer, bufferOffset);
    obj.pictograms.forEach((val) => {
      bufferOffset = Pictogram.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PictogramArray
    let len;
    let data = new PictogramArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pictograms]
    // Deserialize array length for message field [pictograms]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pictograms = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pictograms[i] = Pictogram.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.pictograms.forEach((val) => {
      length += Pictogram.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jsk_rviz_plugins/PictogramArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bfdafbfcdf121aed91dae673b47ae3fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    Pictogram[] pictograms
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
    MSG: jsk_rviz_plugins/Pictogram
    Header header
    geometry_msgs/Pose pose
    uint8 ADD=0
    uint8 DELETE=1
    uint8 ROTATE_Z=2
    uint8 ROTATE_Y=3
    uint8 ROTATE_X=4
    uint8 JUMP=5
    uint8 JUMP_ONCE=6
    uint8 action
    
    uint8 PICTOGRAM_MODE=0 
    uint8 STRING_MODE=1
    
    uint8 mode
    string character
    float64 size
    float64 ttl
    float64 speed
    std_msgs/ColorRGBA color
    
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
    const resolved = new PictogramArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pictograms !== undefined) {
      resolved.pictograms = new Array(msg.pictograms.length);
      for (let i = 0; i < resolved.pictograms.length; ++i) {
        resolved.pictograms[i] = Pictogram.Resolve(msg.pictograms[i]);
      }
    }
    else {
      resolved.pictograms = []
    }

    return resolved;
    }
};

module.exports = PictogramArray;
