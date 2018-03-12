// Auto-generated. Do not edit!

// (in-package jsk_rviz_plugins.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class OverlayText {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.width = null;
      this.height = null;
      this.left = null;
      this.top = null;
      this.bg_color = null;
      this.line_width = null;
      this.text_size = null;
      this.font = null;
      this.fg_color = null;
      this.text = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = 0;
      }
      if (initObj.hasOwnProperty('top')) {
        this.top = initObj.top
      }
      else {
        this.top = 0;
      }
      if (initObj.hasOwnProperty('bg_color')) {
        this.bg_color = initObj.bg_color
      }
      else {
        this.bg_color = new std_msgs.msg.ColorRGBA();
      }
      if (initObj.hasOwnProperty('line_width')) {
        this.line_width = initObj.line_width
      }
      else {
        this.line_width = 0;
      }
      if (initObj.hasOwnProperty('text_size')) {
        this.text_size = initObj.text_size
      }
      else {
        this.text_size = 0.0;
      }
      if (initObj.hasOwnProperty('font')) {
        this.font = initObj.font
      }
      else {
        this.font = '';
      }
      if (initObj.hasOwnProperty('fg_color')) {
        this.fg_color = initObj.fg_color
      }
      else {
        this.fg_color = new std_msgs.msg.ColorRGBA();
      }
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OverlayText
    // Serialize message field [action]
    bufferOffset = _serializer.uint8(obj.action, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.int32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.int32(obj.height, buffer, bufferOffset);
    // Serialize message field [left]
    bufferOffset = _serializer.int32(obj.left, buffer, bufferOffset);
    // Serialize message field [top]
    bufferOffset = _serializer.int32(obj.top, buffer, bufferOffset);
    // Serialize message field [bg_color]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.bg_color, buffer, bufferOffset);
    // Serialize message field [line_width]
    bufferOffset = _serializer.int32(obj.line_width, buffer, bufferOffset);
    // Serialize message field [text_size]
    bufferOffset = _serializer.float32(obj.text_size, buffer, bufferOffset);
    // Serialize message field [font]
    bufferOffset = _serializer.string(obj.font, buffer, bufferOffset);
    // Serialize message field [fg_color]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.fg_color, buffer, bufferOffset);
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OverlayText
    let len;
    let data = new OverlayText(null);
    // Deserialize message field [action]
    data.action = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [left]
    data.left = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [top]
    data.top = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [bg_color]
    data.bg_color = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    // Deserialize message field [line_width]
    data.line_width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [text_size]
    data.text_size = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [font]
    data.font = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [fg_color]
    data.fg_color = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.font.length;
    length += object.text.length;
    return length + 65;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jsk_rviz_plugins/OverlayText';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7efc1ed34881f913afcee6ba02aa1242';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ADD = 0
    uint8 DELETE = 1
    
    uint8 action
    
    int32 width
    int32 height
    int32 left
    int32 top
    std_msgs/ColorRGBA bg_color
    
    int32 line_width
    float32 text_size
    string font
    std_msgs/ColorRGBA fg_color
    
    string text
    
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
    const resolved = new OverlayText(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.left !== undefined) {
      resolved.left = msg.left;
    }
    else {
      resolved.left = 0
    }

    if (msg.top !== undefined) {
      resolved.top = msg.top;
    }
    else {
      resolved.top = 0
    }

    if (msg.bg_color !== undefined) {
      resolved.bg_color = std_msgs.msg.ColorRGBA.Resolve(msg.bg_color)
    }
    else {
      resolved.bg_color = new std_msgs.msg.ColorRGBA()
    }

    if (msg.line_width !== undefined) {
      resolved.line_width = msg.line_width;
    }
    else {
      resolved.line_width = 0
    }

    if (msg.text_size !== undefined) {
      resolved.text_size = msg.text_size;
    }
    else {
      resolved.text_size = 0.0
    }

    if (msg.font !== undefined) {
      resolved.font = msg.font;
    }
    else {
      resolved.font = ''
    }

    if (msg.fg_color !== undefined) {
      resolved.fg_color = std_msgs.msg.ColorRGBA.Resolve(msg.fg_color)
    }
    else {
      resolved.fg_color = new std_msgs.msg.ColorRGBA()
    }

    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
    }

    return resolved;
    }
};

// Constants for message
OverlayText.Constants = {
  ADD: 0,
  DELETE: 1,
}

module.exports = OverlayText;
