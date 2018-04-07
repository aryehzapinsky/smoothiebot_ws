// Auto-generated. Do not edit!

// (in-package world_manager_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SceneObject = require('../msg/SceneObject.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddMeshRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.scene_object = null;
    }
    else {
      if (initObj.hasOwnProperty('scene_object')) {
        this.scene_object = initObj.scene_object
      }
      else {
        this.scene_object = new SceneObject();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddMeshRequest
    // Serialize message field [scene_object]
    bufferOffset = SceneObject.serialize(obj.scene_object, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddMeshRequest
    let len;
    let data = new AddMeshRequest(null);
    // Deserialize message field [scene_object]
    data.scene_object = SceneObject.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += SceneObject.getMessageSize(object.scene_object);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_manager_msgs/AddMeshRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab9fb1b3836095aff25e5ff73555f6d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    world_manager_msgs/SceneObject scene_object
    
    ================================================================================
    MSG: world_manager_msgs/SceneObject
    string object_name
    string mesh_filepath
    geometry_msgs/PoseStamped pose_stamped
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
    const resolved = new AddMeshRequest(null);
    if (msg.scene_object !== undefined) {
      resolved.scene_object = SceneObject.Resolve(msg.scene_object)
    }
    else {
      resolved.scene_object = new SceneObject()
    }

    return resolved;
    }
};

class AddMeshResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddMeshResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddMeshResponse
    let len;
    let data = new AddMeshResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'world_manager_msgs/AddMeshResponse';
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
    const resolved = new AddMeshResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: AddMeshRequest,
  Response: AddMeshResponse,
  md5sum() { return 'ab9fb1b3836095aff25e5ff73555f6d8'; },
  datatype() { return 'world_manager_msgs/AddMesh'; }
};
