// Generated by gencpp from file pr2_msgs/SetLaserTrajCmdResponse.msg
// DO NOT EDIT!


#ifndef PR2_MSGS_MESSAGE_SETLASERTRAJCMDRESPONSE_H
#define PR2_MSGS_MESSAGE_SETLASERTRAJCMDRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pr2_msgs
{
template <class ContainerAllocator>
struct SetLaserTrajCmdResponse_
{
  typedef SetLaserTrajCmdResponse_<ContainerAllocator> Type;

  SetLaserTrajCmdResponse_()
    : start_time()  {
    }
  SetLaserTrajCmdResponse_(const ContainerAllocator& _alloc)
    : start_time()  {
  (void)_alloc;
    }



   typedef ros::Time _start_time_type;
  _start_time_type start_time;





  typedef boost::shared_ptr< ::pr2_msgs::SetLaserTrajCmdResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pr2_msgs::SetLaserTrajCmdResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetLaserTrajCmdResponse_

typedef ::pr2_msgs::SetLaserTrajCmdResponse_<std::allocator<void> > SetLaserTrajCmdResponse;

typedef boost::shared_ptr< ::pr2_msgs::SetLaserTrajCmdResponse > SetLaserTrajCmdResponsePtr;
typedef boost::shared_ptr< ::pr2_msgs::SetLaserTrajCmdResponse const> SetLaserTrajCmdResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pr2_msgs::SetLaserTrajCmdResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pr2_msgs::SetLaserTrajCmdResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pr2_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'pr2_msgs': ['/home/student/smoothiebot_ws/src/pr2_common/pr2_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pr2_msgs::SetLaserTrajCmdResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pr2_msgs::SetLaserTrajCmdResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pr2_msgs::SetLaserTrajCmdResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pr2_msgs::SetLaserTrajCmdResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_msgs::SetLaserTrajCmdResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_msgs::SetLaserTrajCmdResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pr2_msgs::SetLaserTrajCmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3888666920054f1ef39d2df7a5d94b02";
  }

  static const char* value(const ::pr2_msgs::SetLaserTrajCmdResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3888666920054f1eULL;
  static const uint64_t static_value2 = 0xf39d2df7a5d94b02ULL;
};

template<class ContainerAllocator>
struct DataType< ::pr2_msgs::SetLaserTrajCmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pr2_msgs/SetLaserTrajCmdResponse";
  }

  static const char* value(const ::pr2_msgs::SetLaserTrajCmdResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pr2_msgs::SetLaserTrajCmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time start_time\n\
";
  }

  static const char* value(const ::pr2_msgs::SetLaserTrajCmdResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pr2_msgs::SetLaserTrajCmdResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.start_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetLaserTrajCmdResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pr2_msgs::SetLaserTrajCmdResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pr2_msgs::SetLaserTrajCmdResponse_<ContainerAllocator>& v)
  {
    s << indent << "start_time: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.start_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PR2_MSGS_MESSAGE_SETLASERTRAJCMDRESPONSE_H
