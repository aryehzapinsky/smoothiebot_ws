// Auto-generated. Do not edit!

// (in-package world_manager_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SceneBox = require('../msg/SceneBox.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddBoxRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.scene_box = null;
    }
    else {
      if (initObj.hasOwnProperty('scene_box')) {
        this.scene_box = initObj.scene_box
      }
      else {
        this.scene_box = new SceneBox();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddBoxRequest
    // Serialize message field [scene_box]
    bufferOffset = SceneBox.serialize(obj.scene_box, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddBoxRequest
    let len;
    let data = new AddBoxRequest(null);
    // Deserialize message field [scene_box]
    data.scene_box = SceneBox.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += SceneBox.getMessageSize(object.scene_box);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_manager_msgs/AddBoxRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ead51e2681bda79a8bd2c56ad0252ea0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    world_manager_msgs/SceneBox scene_box
    
    ================================================================================
    MSG: world_manager_msgs/SceneBox
    string object_name
    geometry_msgs/PoseStamped pose_stamped
    float32 edge_length_x
    float32 edge_length_y
    float32 edge_length_z
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new AddBoxRequest(null);
    if (msg.scene_box !== undefined) {
      resolved.scene_box = SceneBox.Resolve(msg.scene_box)
    }
    else {
      resolved.scene_box = new SceneBox()
    }

    return resolved;
    }
};

class AddBoxResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddBoxResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddBoxResponse
    let len;
    let data = new AddBoxResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_manager_msgs/AddBoxResponse';
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
    const resolved = new AddBoxResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: AddBoxRequest,
  Response: AddBoxResponse,
  md5sum() { return 'ead51e2681bda79a8bd2c56ad0252ea0'; },
  datatype() { return 'world_manager_msgs/AddBox'; }
};
