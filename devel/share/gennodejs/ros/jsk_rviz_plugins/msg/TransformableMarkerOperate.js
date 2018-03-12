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

class TransformableMarkerOperate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.action = null;
      this.frame_id = null;
      this.name = null;
      this.description = null;
      this.mesh_resource = null;
      this.mesh_use_embedded_materials = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = '';
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
      if (initObj.hasOwnProperty('mesh_resource')) {
        this.mesh_resource = initObj.mesh_resource
      }
      else {
        this.mesh_resource = '';
      }
      if (initObj.hasOwnProperty('mesh_use_embedded_materials')) {
        this.mesh_use_embedded_materials = initObj.mesh_use_embedded_materials
      }
      else {
        this.mesh_use_embedded_materials = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TransformableMarkerOperate
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.int32(obj.action, buffer, bufferOffset);
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [mesh_resource]
    bufferOffset = _serializer.string(obj.mesh_resource, buffer, bufferOffset);
    // Serialize message field [mesh_use_embedded_materials]
    bufferOffset = _serializer.bool(obj.mesh_use_embedded_materials, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransformableMarkerOperate
    let len;
    let data = new TransformableMarkerOperate(null);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mesh_resource]
    data.mesh_resource = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mesh_use_embedded_materials]
    data.mesh_use_embedded_materials = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.frame_id.length;
    length += object.name.length;
    length += object.description.length;
    length += object.mesh_resource.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jsk_rviz_plugins/TransformableMarkerOperate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f5042567d7e11634fa94e4b5452169c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 BOX=0
    uint8 CYLINDER=1
    uint8 TORUS=2
    uint8 MESH_RESOURCE=3
    
    uint8 INSERT=0
    uint8 ERASE=1
    uint8 ERASEALL=2
    uint8 ERASEFOCUS=3
    uint8 COPY=4
    
    int32 type
    int32 action
    string frame_id
    string name
    string description
    string mesh_resource
    bool mesh_use_embedded_materials
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TransformableMarkerOperate(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = ''
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

    if (msg.mesh_resource !== undefined) {
      resolved.mesh_resource = msg.mesh_resource;
    }
    else {
      resolved.mesh_resource = ''
    }

    if (msg.mesh_use_embedded_materials !== undefined) {
      resolved.mesh_use_embedded_materials = msg.mesh_use_embedded_materials;
    }
    else {
      resolved.mesh_use_embedded_materials = false
    }

    return resolved;
    }
};

// Constants for message
TransformableMarkerOperate.Constants = {
  BOX: 0,
  CYLINDER: 1,
  TORUS: 2,
  MESH_RESOURCE: 3,
  INSERT: 0,
  ERASE: 1,
  ERASEALL: 2,
  ERASEFOCUS: 3,
  COPY: 4,
}

module.exports = TransformableMarkerOperate;
