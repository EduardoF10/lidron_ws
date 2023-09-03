// Auto-generated. Do not edit!

// (in-package leddar_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Specs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.h = null;
      this.v = null;
      this.h_fov = null;
      this.v_fov = null;
    }
    else {
      if (initObj.hasOwnProperty('h')) {
        this.h = initObj.h
      }
      else {
        this.h = 0;
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = 0;
      }
      if (initObj.hasOwnProperty('h_fov')) {
        this.h_fov = initObj.h_fov
      }
      else {
        this.h_fov = 0.0;
      }
      if (initObj.hasOwnProperty('v_fov')) {
        this.v_fov = initObj.v_fov
      }
      else {
        this.v_fov = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Specs
    // Serialize message field [h]
    bufferOffset = _serializer.uint32(obj.h, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = _serializer.uint32(obj.v, buffer, bufferOffset);
    // Serialize message field [h_fov]
    bufferOffset = _serializer.float32(obj.h_fov, buffer, bufferOffset);
    // Serialize message field [v_fov]
    bufferOffset = _serializer.float32(obj.v_fov, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Specs
    let len;
    let data = new Specs(null);
    // Deserialize message field [h]
    data.h = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [h_fov]
    data.h_fov = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_fov]
    data.v_fov = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'leddar_ros/Specs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a6f0e497ec5e66f57cae8a1a9782c91';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Channels are organized in a row-major, top-down fashion
    uint32 h #horizontal resolution
    uint32 v #vertical resolution
    
    # Fiel of Views in degrees
    float32 h_fov #horizontal fov
    float32 v_fov #vertical fov
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Specs(null);
    if (msg.h !== undefined) {
      resolved.h = msg.h;
    }
    else {
      resolved.h = 0
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = 0
    }

    if (msg.h_fov !== undefined) {
      resolved.h_fov = msg.h_fov;
    }
    else {
      resolved.h_fov = 0.0
    }

    if (msg.v_fov !== undefined) {
      resolved.v_fov = msg.v_fov;
    }
    else {
      resolved.v_fov = 0.0
    }

    return resolved;
    }
};

module.exports = Specs;
