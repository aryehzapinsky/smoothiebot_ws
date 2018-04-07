// Auto-generated. Do not edit!

// (in-package world_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class SceneBox {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_name = null;
      this.pose_stamped = null;
      this.edge_length_x = null;
      this.edge_length_y = null;
      this.edge_length_z = null;
    }
    else {
      if (initObj.hasOwnProperty('object_name')) {
        this.object_name = initObj.object_name
      }
      else {
        this.object_name = '';
      }
      if (initObj.hasOwnProperty('pose_stamped')) {
        this.pose_stamped = initObj.pose_stamped
      }
      else {
        this.pose_stamped = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('edge_length_x')) {
        this.edge_length_x = initObj.edge_length_x
      }
      else {
        this.edge_length_x = 0.0;
      }
      if (initObj.hasOwnProperty('edge_length_y')) {
        this.edge_length_y = initObj.edge_length_y
      }
      else {
        this.edge_length_y = 0.0;
      }
      if (initObj.hasOwnProperty('edge_length_z')) {
        this.edge_length_z = initObj.edge_length_z
      }
      else {
        this.edge_length_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SceneBox
    // Serialize message field [object_name]
    bufferOffset = _serializer.string(obj.object_name, buffer, bufferOffset);
    // Serialize message field [pose_stamped]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose_stamped, buffer, bufferOffset);
    // Serialize message field [edge_length_x]
    bufferOffset = _serializer.float32(obj.edge_length_x, buffer, bufferOffset);
    // Serialize message field [edge_length_y]
    bufferOffset = _serializer.float32(obj.edge_length_y, buffer, bufferOffset);
    // Serialize message field [edge_length_z]
    bufferOffset = _serializer.float32(obj.edge_length_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SceneBox
    let len;
    let data = new SceneBox(null);
    // Deserialize message field [object_name]
    data.object_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose_stamped]
    data.pose_stamped = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [edge_length_x]
    data.edge_length_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [edge_length_y]
    data.edge_length_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [edge_length_z]
    data.edge_length_z = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.object_name.length;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose_stamped);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'world_manager_msgs/SceneBox';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c55779d40de465f1cada87ee22079c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SceneBox(null);
    if (msg.object_name !== undefined) {
      resolved.object_name = msg.object_name;
    }
    else {
      resolved.object_name = ''
    }

    if (msg.pose_stamped !== undefined) {
      resolved.pose_stamped = geometry_msgs.msg.PoseStamped.Resolve(msg.pose_stamped)
    }
    else {
      resolved.pose_stamped = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.edge_length_x !== undefined) {
      resolved.edge_length_x = msg.edge_length_x;
    }
    else {
      resolved.edge_length_x = 0.0
    }

    if (msg.edge_length_y !== undefined) {
      resolved.edge_length_y = msg.edge_length_y;
    }
    else {
      resolved.edge_length_y = 0.0
    }

    if (msg.edge_length_z !== undefined) {
      resolved.edge_length_z = msg.edge_length_z;
    }
    else {
      resolved.edge_length_z = 0.0
    }

    return resolved;
    }
};

module.exports = SceneBox;
