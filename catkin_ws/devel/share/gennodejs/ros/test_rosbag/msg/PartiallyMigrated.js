// Auto-generated. Do not edit!

// (in-package test_rosbag.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MigratedExplicit = require('./MigratedExplicit.js');

//-----------------------------------------------------------

class PartiallyMigrated {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.field1 = null;
      this.field2 = null;
      this.field3 = null;
      this.field5 = null;
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
        this.field2 = new MigratedExplicit();
      }
      if (initObj.hasOwnProperty('field3')) {
        this.field3 = initObj.field3
      }
      else {
        this.field3 = '';
      }
      if (initObj.hasOwnProperty('field5')) {
        this.field5 = initObj.field5
      }
      else {
        this.field5 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PartiallyMigrated
    // Serialize message field [field1]
    bufferOffset = _serializer.int32(obj.field1, buffer, bufferOffset);
    // Serialize message field [field2]
    bufferOffset = MigratedExplicit.serialize(obj.field2, buffer, bufferOffset);
    // Serialize message field [field3]
    bufferOffset = _serializer.string(obj.field3, buffer, bufferOffset);
    // Serialize message field [field5]
    bufferOffset = _serializer.float32(obj.field5, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PartiallyMigrated
    let len;
    let data = new PartiallyMigrated(null);
    // Deserialize message field [field1]
    data.field1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [field2]
    data.field2 = MigratedExplicit.deserialize(buffer, bufferOffset);
    // Deserialize message field [field3]
    data.field3 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [field5]
    data.field5 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MigratedExplicit.getMessageSize(object.field2);
    length += object.field3.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rosbag/PartiallyMigrated';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b942bf4a41fb2bebc502889fd8981dfe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32            field1 # 40
    MigratedExplicit field2 # (17, 58.2, "aldfkja", 82)
    string           field3 # "radasdk"
    float32          field5 # 63.4
    
    ================================================================================
    MSG: test_rosbag/MigratedExplicit
    Header  header
    float32 afield2 #58.2
    string  combo_field3 #"aldfkja 17"
    int32   afield4 #82
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PartiallyMigrated(null);
    if (msg.field1 !== undefined) {
      resolved.field1 = msg.field1;
    }
    else {
      resolved.field1 = 0
    }

    if (msg.field2 !== undefined) {
      resolved.field2 = MigratedExplicit.Resolve(msg.field2)
    }
    else {
      resolved.field2 = new MigratedExplicit()
    }

    if (msg.field3 !== undefined) {
      resolved.field3 = msg.field3;
    }
    else {
      resolved.field3 = ''
    }

    if (msg.field5 !== undefined) {
      resolved.field5 = msg.field5;
    }
    else {
      resolved.field5 = 0.0
    }

    return resolved;
    }
};

module.exports = PartiallyMigrated;
