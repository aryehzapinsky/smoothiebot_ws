// Generated by gencpp from file multimaster_msgs_fkie/LinkStatesStamped.msg
// DO NOT EDIT!


#ifndef MULTIMASTER_MSGS_FKIE_MESSAGE_LINKSTATESSTAMPED_H
#define MULTIMASTER_MSGS_FKIE_MESSAGE_LINKSTATESSTAMPED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <multimaster_msgs_fkie/LinkState.h>

namespace multimaster_msgs_fkie
{
template <class ContainerAllocator>
struct LinkStatesStamped_
{
  typedef LinkStatesStamped_<ContainerAllocator> Type;

  LinkStatesStamped_()
    : header()
    , links()  {
    }
  LinkStatesStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , links(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::multimaster_msgs_fkie::LinkState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::multimaster_msgs_fkie::LinkState_<ContainerAllocator> >::other >  _links_type;
  _links_type links;





  typedef boost::shared_ptr< ::multimaster_msgs_fkie::LinkStatesStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::multimaster_msgs_fkie::LinkStatesStamped_<ContainerAllocator> const> ConstPtr;

}; // struct LinkStatesStamped_

typedef ::multimaster_msgs_fkie::LinkStatesStamped_<std::allocator<void> > LinkStatesStamped;

typedef boost::shared_ptr< ::multimaster_msgs_fkie::LinkStatesStamped > LinkStatesStampedPtr;
typedef boost::shared_ptr< ::multimaster_msgs_fkie::LinkStatesStamped const> LinkStatesStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::multimaster_msgs_fkie::LinkStatesStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::multimaster_msgs_fkie::LinkStatesStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace multimaster_msgs_fkie

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'multimaster_msgs_fkie': ['/home/student/smoothiebot_ws/src/multimaster_fkie/multimaster_msgs_fkie/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::multimaster_msgs_fkie::LinkStatesStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::multimaster_msgs_fkie::LinkStatesStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::multimaster_msgs_fkie::LinkStatesStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::multimaster_msgs_fkie::LinkStatesStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::multimaster_msgs_fkie::LinkStatesStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::multimaster_msgs_fkie::LinkStatesStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::multimaster_msgs_fkie::LinkStatesStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b7c41a46488485ec6593097b0cabe904";
  }

  static const char* value(const ::multimaster_msgs_fkie::LinkStatesStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb7c41a46488485ecULL;
  static const uint64_t static_value2 = 0x6593097b0cabe904ULL;
};

template<class ContainerAllocator>
struct DataType< ::multimaster_msgs_fkie::LinkStatesStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "multimaster_msgs_fkie/LinkStatesStamped";
  }

  static const char* value(const ::multimaster_msgs_fkie::LinkStatesStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::multimaster_msgs_fkie::LinkStatesStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
multimaster_msgs_fkie/LinkState[] links\n\
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
MSG: multimaster_msgs_fkie/LinkState\n\
string destination\n\
float32 quality\n\
";
  }

  static const char* value(const ::multimaster_msgs_fkie::LinkStatesStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::multimaster_msgs_fkie::LinkStatesStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.links);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LinkStatesStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::multimaster_msgs_fkie::LinkStatesStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::multimaster_msgs_fkie::LinkStatesStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "links[]" << std::endl;
    for (size_t i = 0; i < v.links.size(); ++i)
    {
      s << indent << "  links[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::multimaster_msgs_fkie::LinkState_<ContainerAllocator> >::stream(s, indent + "    ", v.links[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MULTIMASTER_MSGS_FKIE_MESSAGE_LINKSTATESSTAMPED_H
