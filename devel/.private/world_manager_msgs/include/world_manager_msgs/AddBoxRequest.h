// Generated by gencpp from file world_manager_msgs/AddBoxRequest.msg
// DO NOT EDIT!


#ifndef WORLD_MANAGER_MSGS_MESSAGE_ADDBOXREQUEST_H
#define WORLD_MANAGER_MSGS_MESSAGE_ADDBOXREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <world_manager_msgs/SceneBox.h>

namespace world_manager_msgs
{
template <class ContainerAllocator>
struct AddBoxRequest_
{
  typedef AddBoxRequest_<ContainerAllocator> Type;

  AddBoxRequest_()
    : scene_box()  {
    }
  AddBoxRequest_(const ContainerAllocator& _alloc)
    : scene_box(_alloc)  {
  (void)_alloc;
    }



   typedef  ::world_manager_msgs::SceneBox_<ContainerAllocator>  _scene_box_type;
  _scene_box_type scene_box;





  typedef boost::shared_ptr< ::world_manager_msgs::AddBoxRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::world_manager_msgs::AddBoxRequest_<ContainerAllocator> const> ConstPtr;

}; // struct AddBoxRequest_

typedef ::world_manager_msgs::AddBoxRequest_<std::allocator<void> > AddBoxRequest;

typedef boost::shared_ptr< ::world_manager_msgs::AddBoxRequest > AddBoxRequestPtr;
typedef boost::shared_ptr< ::world_manager_msgs::AddBoxRequest const> AddBoxRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::world_manager_msgs::AddBoxRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::world_manager_msgs::AddBoxRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace world_manager_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'world_manager_msgs': ['/home/student/smoothiebot_ws/src/world_manager/world_manager_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::world_manager_msgs::AddBoxRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::world_manager_msgs::AddBoxRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::world_manager_msgs::AddBoxRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::world_manager_msgs::AddBoxRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::world_manager_msgs::AddBoxRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::world_manager_msgs::AddBoxRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::world_manager_msgs::AddBoxRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ead51e2681bda79a8bd2c56ad0252ea0";
  }

  static const char* value(const ::world_manager_msgs::AddBoxRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xead51e2681bda79aULL;
  static const uint64_t static_value2 = 0x8bd2c56ad0252ea0ULL;
};

template<class ContainerAllocator>
struct DataType< ::world_manager_msgs::AddBoxRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "world_manager_msgs/AddBoxRequest";
  }

  static const char* value(const ::world_manager_msgs::AddBoxRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::world_manager_msgs::AddBoxRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "world_manager_msgs/SceneBox scene_box\n\
\n\
================================================================================\n\
MSG: world_manager_msgs/SceneBox\n\
string object_name\n\
geometry_msgs/PoseStamped pose_stamped\n\
float32 edge_length_x\n\
float32 edge_length_y\n\
float32 edge_length_z\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::world_manager_msgs::AddBoxRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::world_manager_msgs::AddBoxRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.scene_box);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AddBoxRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::world_manager_msgs::AddBoxRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::world_manager_msgs::AddBoxRequest_<ContainerAllocator>& v)
  {
    s << indent << "scene_box: ";
    s << std::endl;
    Printer< ::world_manager_msgs::SceneBox_<ContainerAllocator> >::stream(s, indent + "  ", v.scene_box);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WORLD_MANAGER_MSGS_MESSAGE_ADDBOXREQUEST_H
