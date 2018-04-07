// Generated by gencpp from file pr2_msgs/DashboardState.msg
// DO NOT EDIT!


#ifndef PR2_MSGS_MESSAGE_DASHBOARDSTATE_H
#define PR2_MSGS_MESSAGE_DASHBOARDSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Bool.h>
#include <pr2_msgs/PowerBoardState.h>
#include <pr2_msgs/PowerState.h>
#include <pr2_msgs/AccessPoint.h>

namespace pr2_msgs
{
template <class ContainerAllocator>
struct DashboardState_
{
  typedef DashboardState_<ContainerAllocator> Type;

  DashboardState_()
    : motors_halted()
    , motors_halted_valid(false)
    , power_board_state()
    , power_board_state_valid(false)
    , power_state()
    , power_state_valid(false)
    , access_point()
    , access_point_valid(false)  {
    }
  DashboardState_(const ContainerAllocator& _alloc)
    : motors_halted(_alloc)
    , motors_halted_valid(false)
    , power_board_state(_alloc)
    , power_board_state_valid(false)
    , power_state(_alloc)
    , power_state_valid(false)
    , access_point(_alloc)
    , access_point_valid(false)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Bool_<ContainerAllocator>  _motors_halted_type;
  _motors_halted_type motors_halted;

   typedef uint8_t _motors_halted_valid_type;
  _motors_halted_valid_type motors_halted_valid;

   typedef  ::pr2_msgs::PowerBoardState_<ContainerAllocator>  _power_board_state_type;
  _power_board_state_type power_board_state;

   typedef uint8_t _power_board_state_valid_type;
  _power_board_state_valid_type power_board_state_valid;

   typedef  ::pr2_msgs::PowerState_<ContainerAllocator>  _power_state_type;
  _power_state_type power_state;

   typedef uint8_t _power_state_valid_type;
  _power_state_valid_type power_state_valid;

   typedef  ::pr2_msgs::AccessPoint_<ContainerAllocator>  _access_point_type;
  _access_point_type access_point;

   typedef uint8_t _access_point_valid_type;
  _access_point_valid_type access_point_valid;





  typedef boost::shared_ptr< ::pr2_msgs::DashboardState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pr2_msgs::DashboardState_<ContainerAllocator> const> ConstPtr;

}; // struct DashboardState_

typedef ::pr2_msgs::DashboardState_<std::allocator<void> > DashboardState;

typedef boost::shared_ptr< ::pr2_msgs::DashboardState > DashboardStatePtr;
typedef boost::shared_ptr< ::pr2_msgs::DashboardState const> DashboardStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pr2_msgs::DashboardState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pr2_msgs::DashboardState_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pr2_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'pr2_msgs': ['/home/student/smoothiebot_ws/src/pr2_common/pr2_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pr2_msgs::DashboardState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pr2_msgs::DashboardState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pr2_msgs::DashboardState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pr2_msgs::DashboardState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_msgs::DashboardState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_msgs::DashboardState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pr2_msgs::DashboardState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "db0cd0d535d75e0f6257b20c403e87f5";
  }

  static const char* value(const ::pr2_msgs::DashboardState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdb0cd0d535d75e0fULL;
  static const uint64_t static_value2 = 0x6257b20c403e87f5ULL;
};

template<class ContainerAllocator>
struct DataType< ::pr2_msgs::DashboardState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pr2_msgs/DashboardState";
  }

  static const char* value(const ::pr2_msgs::DashboardState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pr2_msgs::DashboardState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message communicates state information that might be used by a\n\
# dashboard application.\n\
std_msgs/Bool motors_halted\n\
bool motors_halted_valid\n\
\n\
pr2_msgs/PowerBoardState power_board_state\n\
bool power_board_state_valid\n\
\n\
pr2_msgs/PowerState power_state\n\
bool power_state_valid\n\
\n\
pr2_msgs/AccessPoint access_point\n\
bool access_point_valid\n\
\n\
================================================================================\n\
MSG: std_msgs/Bool\n\
bool data\n\
================================================================================\n\
MSG: pr2_msgs/PowerBoardState\n\
# This message communicates the state of the PR2's power board.\n\
int8 STATE_NOPOWER=0\n\
int8 STATE_STANDBY=1\n\
int8 STATE_PUMPING=2\n\
int8 STATE_ON=3\n\
int8 STATE_ENABLED=3  # Preferred over STATE_ON, keeping STATE_ON for backcompat\n\
int8 STATE_DISABLED=4\n\
\n\
int8 MASTER_NOPOWER=0\n\
int8 MASTER_STANDBY=1\n\
int8 MASTER_ON=2\n\
int8 MASTER_OFF=3\n\
int8 MASTER_SHUTDOWN=4\n\
\n\
Header header\n\
string name # Name with serial number\n\
uint32 serial_num # Serial number for this board's message\n\
float64 input_voltage # Input voltage to power board\n\
\n\
# Master States:\n\
#  MASTER_NOPOWER, MASTER_STANDBY, MASTER_ON, MASTER_OFF, MASTER_SHUTDOWN \n\
int8 master_state  # The master state machine's state in the powerboard\n\
\n\
# Circuit States:\n\
#  STATE_NOPOWER, STATE_STANDBY, STATE_PUMPING, STATE_ON, STATE_DISABLED\n\
int8[3] circuit_state # One of the above states\n\
float64[3] circuit_voltage  # Output voltage of each circuit\n\
\n\
# True if robot should be enabled\n\
bool run_stop           #Note - if the wireless run-stop is hit, this will be unobservable\n\
bool wireless_stop \n\
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
MSG: pr2_msgs/PowerState\n\
# This message communicates the state of the PR2's power system.\n\
Header header\n\
float64 power_consumption ## Watts\n\
duration time_remaining ## estimated time to empty or full\n\
string prediction_method ## how time_remaining is being calculated\n\
int8  relative_capacity ## percent of capacity\n\
int8  AC_present ## number of packs detecting AC power, > 0 means plugged in\n\
\n\
================================================================================\n\
MSG: pr2_msgs/AccessPoint\n\
# This message communicates the state of the PR2's wifi access point.\n\
Header header\n\
string essid\n\
string macaddr\n\
int32 signal\n\
int32 noise\n\
int32 snr\n\
int32 channel\n\
string rate\n\
string tx_power\n\
int32 quality\n\
";
  }

  static const char* value(const ::pr2_msgs::DashboardState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pr2_msgs::DashboardState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.motors_halted);
      stream.next(m.motors_halted_valid);
      stream.next(m.power_board_state);
      stream.next(m.power_board_state_valid);
      stream.next(m.power_state);
      stream.next(m.power_state_valid);
      stream.next(m.access_point);
      stream.next(m.access_point_valid);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DashboardState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pr2_msgs::DashboardState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pr2_msgs::DashboardState_<ContainerAllocator>& v)
  {
    s << indent << "motors_halted: ";
    s << std::endl;
    Printer< ::std_msgs::Bool_<ContainerAllocator> >::stream(s, indent + "  ", v.motors_halted);
    s << indent << "motors_halted_valid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.motors_halted_valid);
    s << indent << "power_board_state: ";
    s << std::endl;
    Printer< ::pr2_msgs::PowerBoardState_<ContainerAllocator> >::stream(s, indent + "  ", v.power_board_state);
    s << indent << "power_board_state_valid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.power_board_state_valid);
    s << indent << "power_state: ";
    s << std::endl;
    Printer< ::pr2_msgs::PowerState_<ContainerAllocator> >::stream(s, indent + "  ", v.power_state);
    s << indent << "power_state_valid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.power_state_valid);
    s << indent << "access_point: ";
    s << std::endl;
    Printer< ::pr2_msgs::AccessPoint_<ContainerAllocator> >::stream(s, indent + "  ", v.access_point);
    s << indent << "access_point_valid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.access_point_valid);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PR2_MSGS_MESSAGE_DASHBOARDSTATE_H
