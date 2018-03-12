// Auto-generated. Do not edit!

// (in-package jsk_rviz_plugins.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class OverlayMenu {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.current_index = null;
      this.menus = null;
      this.title = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('current_index')) {
        this.current_index = initObj.current_index
      }
      else {
        this.current_index = 0;
      }
      if (initObj.hasOwnProperty('menus')) {
        this.menus = initObj.menus
      }
      else {
        this.menus = [];
      }
      if (initObj.hasOwnProperty('title')) {
        this.title = initObj.title
      }
      else {
        this.title = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OverlayMenu
    // Serialize message field [action]
    bufferOffset = _serializer.int32(obj.action, buffer, bufferOffset);
    // Serialize message field [current_index]
    bufferOffset = _serializer.uint32(obj.current_index, buffer, bufferOffset);
    // Serialize message field [menus]
    bufferOffset = _arraySerializer.string(obj.menus, buffer, bufferOffset, null);
    // Serialize message field [title]
    bufferOffset = _serializer.string(obj.title, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OverlayMenu
    let len;
    let data = new OverlayMenu(null);
    // Deserialize message field [action]
    data.action = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [current_index]
    data.current_index = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [menus]
    data.menus = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [title]
    data.title = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.menus.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.title.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jsk_rviz_plugins/OverlayMenu';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fed3c7e9788f7ee37908107a2597b619';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 ACTION_SELECT=0
    int32 ACTION_CLOSE=1
    int32 action
    uint32 current_index
    string[] menus
    string title
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OverlayMenu(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.current_index !== undefined) {
      resolved.current_index = msg.current_index;
    }
    else {
      resolved.current_index = 0
    }

    if (msg.menus !== undefined) {
      resolved.menus = msg.menus;
    }
    else {
      resolved.menus = []
    }

    if (msg.title !== undefined) {
      resolved.title = msg.title;
    }
    else {
      resolved.title = ''
    }

    return resolved;
    }
};

// Constants for message
OverlayMenu.Constants = {
  ACTION_SELECT: 0,
  ACTION_CLOSE: 1,
}

module.exports = OverlayMenu;
