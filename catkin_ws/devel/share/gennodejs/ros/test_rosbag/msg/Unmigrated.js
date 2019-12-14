// Auto-generated. Do not edit!

// (in-package test_rosbag.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Unmigrated {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.field1 = null;
      this.field2 = null;
      this.field3 = null;
    }
    else {
      if (initObj.hasOwnProperty('field1')) {
        this.field1 = initObj.field1
      }
      else {
        this.field1 = 0;
      }
      if (initObj.hasOwnProperty('field2')) {
        this.field2 = initObj.field2
      }
      else {
        this.field2 = '';
      }
      if (initObj.hasOwnProperty('field3')) {
        this.field3 = initObj.field3
      }
      else {
        this.field3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Unmigrated
    // Serialize message field [field1]
    bufferOffset = _serializer.int32(obj.field1, buffer, bufferOffset);
    // Serialize message field [field2]
    bufferOffset = _serializer.string(obj.field2, buffer, bufferOffset);
    // Serialize message field [field3]
    bufferOffset = _serializer.float32(obj.field3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Unmigrated
    let len;
    let data = new Unmigrated(null);
    // Deserialize message field [field1]
    data.field1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [field2]
    data.field2 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [field3]
    data.field3 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.field2.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rosbag/Unmigrated';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b5d640967dccef2a24697ec4b8a571ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32   field1 #12
    string  field2 #"uuiasjs"
    float32 field3 #61.7
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Unmigrated(null);
    if (msg.field1 !== undefined) {
      resolved.field1 = msg.field1;
    }
    else {
      resolved.field1 = 0
    }

    if (msg.field2 !== undefined) {
      resolved.field2 = msg.field2;
    }
    else {
      resolved.field2 = ''
    }

    if (msg.field3 !== undefined) {
      resolved.field3 = msg.field3;
    }
    else {
      resolved.field3 = 0.0
    }

    return resolved;
    }
};

module.exports = Unmigrated;
