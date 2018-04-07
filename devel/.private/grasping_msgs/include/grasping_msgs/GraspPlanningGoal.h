// Generated by gencpp from file grasping_msgs/GraspPlanningGoal.msg
// DO NOT EDIT!


#ifndef GRASPING_MSGS_MESSAGE_GRASPPLANNINGGOAL_H
#define GRASPING_MSGS_MESSAGE_GRASPPLANNINGGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <grasping_msgs/Object.h>

namespace grasping_msgs
{
template <class ContainerAllocator>
struct GraspPlanningGoal_
{
  typedef GraspPlanningGoal_<ContainerAllocator> Type;

  GraspPlanningGoal_()
    : object()
    , group_name()  {
    }
  GraspPlanningGoal_(const ContainerAllocator& _alloc)
    : object(_alloc)
    , group_name(_alloc)  {
  (void)_alloc;
    }



   typedef  ::grasping_msgs::Object_<ContainerAllocator>  _object_type;
  _object_type object;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _group_name_type;
  _group_name_type group_name;





  typedef boost::shared_ptr< ::grasping_msgs::GraspPlanningGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::grasping_msgs::GraspPlanningGoal_<ContainerAllocator> const> ConstPtr;

}; // struct GraspPlanningGoal_

typedef ::grasping_msgs::GraspPlanningGoal_<std::allocator<void> > GraspPlanningGoal;

typedef boost::shared_ptr< ::grasping_msgs::GraspPlanningGoal > GraspPlanningGoalPtr;
typedef boost::shared_ptr< ::grasping_msgs::GraspPlanningGoal const> GraspPlanningGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::grasping_msgs::GraspPlanningGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::grasping_msgs::GraspPlanningGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace grasping_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'grasping_msgs': ['/home/student/smoothiebot_ws/devel/.private/grasping_msgs/share/grasping_msgs/msg', '/home/student/smoothiebot_ws/src/grasping_msgs/msg'], 'shape_msgs': ['/opt/ros/kinetic/share/shape_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'moveit_msgs': ['/opt/ros/kinetic/share/moveit_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'object_recognition_msgs': ['/opt/ros/kinetic/share/object_recognition_msgs/cmake/../msg'], 'octomap_msgs': ['/opt/ros/kinetic/share/octomap_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::grasping_msgs::GraspPlanningGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::grasping_msgs::GraspPlanningGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::grasping_msgs::GraspPlanningGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::grasping_msgs::GraspPlanningGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::grasping_msgs::GraspPlanningGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::grasping_msgs::GraspPlanningGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::grasping_msgs::GraspPlanningGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1c3f3ed2a31c4c865c3032a4789c0df9";
  }

  static const char* value(const ::grasping_msgs::GraspPlanningGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1c3f3ed2a31c4c86ULL;
  static const uint64_t static_value2 = 0x5c3032a4789c0df9ULL;
};

template<class ContainerAllocator>
struct DataType< ::grasping_msgs::GraspPlanningGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "grasping_msgs/GraspPlanningGoal";
  }

  static const char* value(const ::grasping_msgs::GraspPlanningGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::grasping_msgs::GraspPlanningGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
###########################################################\n\
# This action is used when planning grasps for a single,\n\
#  already known object, one object at a time.\n\
\n\
# Object for which grasp planning is requested\n\
Object object\n\
\n\
# Name of group to plan with (optional)\n\
string group_name\n\
\n\
================================================================================\n\
MSG: grasping_msgs/Object\n\
###########################################################\n\
# This message describes an object.\n\
\n\
# Many of the geometric items below lack a stamp/frame_id,\n\
# header stamp/frame_id should be used there\n\
std_msgs/Header header\n\
\n\
# An object might have a name\n\
string name\n\
\n\
# An object might have a known (named) support surface\n\
string support_surface\n\
\n\
# Objects might have properties, such as type/class, or color, etc.\n\
ObjectProperty[] properties\n\
\n\
###########################################################\n\
# Objects have many possible descriptions\n\
#  The following are the possible description formats\n\
\n\
# Perception modules often represent an object as a cluster of points\n\
#  Is considered valid if number of points > 0\n\
sensor_msgs/PointCloud2 point_cluster\n\
\n\
# MoveIt prefers solid primitives or meshes as a description of objects\n\
shape_msgs/SolidPrimitive[] primitives\n\
geometry_msgs/Pose[] primitive_poses\n\
\n\
shape_msgs/Mesh[] meshes\n\
geometry_msgs/Pose[] mesh_poses\n\
\n\
# An object representing a support surface might be described by a plane\n\
# Is considered valid if coefficients are not all 0s.\n\
shape_msgs/Plane surface\n\
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
MSG: grasping_msgs/ObjectProperty\n\
###########################################################\n\
# Other generic properties of an object\n\
string name\n\
string value\n\
\n\
================================================================================\n\
MSG: sensor_msgs/PointCloud2\n\
# This message holds a collection of N-dimensional points, which may\n\
# contain additional information such as normals, intensity, etc. The\n\
# point data is stored as a binary blob, its layout described by the\n\
# contents of the \"fields\" array.\n\
\n\
# The point cloud data may be organized 2d (image-like) or 1d\n\
# (unordered). Point clouds organized as 2d images may be produced by\n\
# camera depth sensors such as stereo or time-of-flight.\n\
\n\
# Time of sensor data acquisition, and the coordinate frame ID (for 3d\n\
# points).\n\
Header header\n\
\n\
# 2D structure of the point cloud. If the cloud is unordered, height is\n\
# 1 and width is the length of the point cloud.\n\
uint32 height\n\
uint32 width\n\
\n\
# Describes the channels and their layout in the binary data blob.\n\
PointField[] fields\n\
\n\
bool    is_bigendian # Is this data bigendian?\n\
uint32  point_step   # Length of a point in bytes\n\
uint32  row_step     # Length of a row in bytes\n\
uint8[] data         # Actual point data, size is (row_step*height)\n\
\n\
bool is_dense        # True if there are no invalid points\n\
\n\
================================================================================\n\
MSG: sensor_msgs/PointField\n\
# This message holds the description of one point entry in the\n\
# PointCloud2 message format.\n\
uint8 INT8    = 1\n\
uint8 UINT8   = 2\n\
uint8 INT16   = 3\n\
uint8 UINT16  = 4\n\
uint8 INT32   = 5\n\
uint8 UINT32  = 6\n\
uint8 FLOAT32 = 7\n\
uint8 FLOAT64 = 8\n\
\n\
string name      # Name of field\n\
uint32 offset    # Offset from start of point struct\n\
uint8  datatype  # Datatype enumeration, see above\n\
uint32 count     # How many elements in the field\n\
\n\
================================================================================\n\
MSG: shape_msgs/SolidPrimitive\n\
# Define box, sphere, cylinder, cone \n\
# All shapes are defined to have their bounding boxes centered around 0,0,0.\n\
\n\
uint8 BOX=1\n\
uint8 SPHERE=2\n\
uint8 CYLINDER=3\n\
uint8 CONE=4\n\
\n\
# The type of the shape\n\
uint8 type\n\
\n\
\n\
# The dimensions of the shape\n\
float64[] dimensions\n\
\n\
# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array\n\
\n\
# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding\n\
# sides of the box.\n\
uint8 BOX_X=0\n\
uint8 BOX_Y=1\n\
uint8 BOX_Z=2\n\
\n\
\n\
# For the SPHERE type, only one component is used, and it gives the radius of\n\
# the sphere.\n\
uint8 SPHERE_RADIUS=0\n\
\n\
\n\
# For the CYLINDER and CONE types, the center line is oriented along\n\
# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component\n\
# of dimensions gives the height of the cylinder (cone).  The\n\
# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the\n\
# radius of the base of the cylinder (cone).  Cone and cylinder\n\
# primitives are defined to be circular. The tip of the cone is\n\
# pointing up, along +Z axis.\n\
\n\
uint8 CYLINDER_HEIGHT=0\n\
uint8 CYLINDER_RADIUS=1\n\
\n\
uint8 CONE_HEIGHT=0\n\
uint8 CONE_RADIUS=1\n\
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
\n\
================================================================================\n\
MSG: shape_msgs/Mesh\n\
# Definition of a mesh\n\
\n\
# list of triangles; the index values refer to positions in vertices[]\n\
MeshTriangle[] triangles\n\
\n\
# the actual vertices that make up the mesh\n\
geometry_msgs/Point[] vertices\n\
\n\
================================================================================\n\
MSG: shape_msgs/MeshTriangle\n\
# Definition of a triangle's vertices\n\
uint32[3] vertex_indices\n\
\n\
================================================================================\n\
MSG: shape_msgs/Plane\n\
# Representation of a plane, using the plane equation ax + by + cz + d = 0\n\
\n\
# a := coef[0]\n\
# b := coef[1]\n\
# c := coef[2]\n\
# d := coef[3]\n\
\n\
float64[4] coef\n\
";
  }

  static const char* value(const ::grasping_msgs::GraspPlanningGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::grasping_msgs::GraspPlanningGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.object);
      stream.next(m.group_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GraspPlanningGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::grasping_msgs::GraspPlanningGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::grasping_msgs::GraspPlanningGoal_<ContainerAllocator>& v)
  {
    s << indent << "object: ";
    s << std::endl;
    Printer< ::grasping_msgs::Object_<ContainerAllocator> >::stream(s, indent + "  ", v.object);
    s << indent << "group_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.group_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GRASPING_MSGS_MESSAGE_GRASPPLANNINGGOAL_H
