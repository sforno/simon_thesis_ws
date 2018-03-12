// Auto-generated. Do not edit!

// (in-package jsk_rviz_plugins.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TransformableMarkerOperate = require('../msg/TransformableMarkerOperate.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class RequestMarkerOperateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.operate = null;
    }
    else {
      if (initObj.hasOwnProperty('operate')) {
        this.operate = initObj.operate
      }
      else {
        this.operate = new TransformableMarkerOperate();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestMarkerOperateRequest
    // Serialize message field [operate]
    bufferOffset = TransformableMarkerOperate.serialize(obj.operate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestMarkerOperateRequest
    let len;
    let data = new RequestMarkerOperateRequest(null);
    // Deserialize message field [operate]
    data.operate = TransformableMarkerOperate.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += TransformableMarkerOperate.getMessageSize(object.operate);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_rviz_plugins/RequestMarkerOperateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5d5e6dca1cfed7e0be1a8c17221d0619';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    jsk_rviz_plugins/TransformableMarkerOperate operate
    
    ================================================================================
    MSG: jsk_rviz_plugins/TransformableMarkerOperate
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
    const resolved = new RequestMarkerOperateRequest(null);
    if (msg.operate !== undefined) {
      resolved.operate = TransformableMarkerOperate.Resolve(msg.operate)
    }
    else {
      resolved.operate = new TransformableMarkerOperate()
    }

    return resolved;
    }
};

class RequestMarkerOperateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestMarkerOperateResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestMarkerOperateResponse
    let len;
    let data = new RequestMarkerOperateResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jsk_rviz_plugins/RequestMarkerOperateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestMarkerOperateResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: RequestMarkerOperateRequest,
  Response: RequestMarkerOperateResponse,
  md5sum() { return '5d5e6dca1cfed7e0be1a8c17221d0619'; },
  datatype() { return 'jsk_rviz_plugins/RequestMarkerOperate'; }
};
