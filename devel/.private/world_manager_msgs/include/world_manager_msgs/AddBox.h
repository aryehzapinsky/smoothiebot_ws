// Generated by gencpp from file world_manager_msgs/AddBox.msg
// DO NOT EDIT!


#ifndef WORLD_MANAGER_MSGS_MESSAGE_ADDBOX_H
#define WORLD_MANAGER_MSGS_MESSAGE_ADDBOX_H

#include <ros/service_traits.h>


#include <world_manager_msgs/AddBoxRequest.h>
#include <world_manager_msgs/AddBoxResponse.h>


namespace world_manager_msgs
{

struct AddBox
{

typedef AddBoxRequest Request;
typedef AddBoxResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddBox
} // namespace world_manager_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::world_manager_msgs::AddBox > {
  static const char* value()
  {
    return "ead51e2681bda79a8bd2c56ad0252ea0";
  }

  static const char* value(const ::world_manager_msgs::AddBox&) { return value(); }
};

template<>
struct DataType< ::world_manager_msgs::AddBox > {
  static const char* value()
  {
    return "world_manager_msgs/AddBox";
  }

  static const char* value(const ::world_manager_msgs::AddBox&) { return value(); }
};


// service_traits::MD5Sum< ::world_manager_msgs::AddBoxRequest> should match 
// service_traits::MD5Sum< ::world_manager_msgs::AddBox > 
template<>
struct MD5Sum< ::world_manager_msgs::AddBoxRequest>
{
  static const char* value()
  {
    return MD5Sum< ::world_manager_msgs::AddBox >::value();
  }
  static const char* value(const ::world_manager_msgs::AddBoxRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::world_manager_msgs::AddBoxRequest> should match 
// service_traits::DataType< ::world_manager_msgs::AddBox > 
template<>
struct DataType< ::world_manager_msgs::AddBoxRequest>
{
  static const char* value()
  {
    return DataType< ::world_manager_msgs::AddBox >::value();
  }
  static const char* value(const ::world_manager_msgs::AddBoxRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::world_manager_msgs::AddBoxResponse> should match 
// service_traits::MD5Sum< ::world_manager_msgs::AddBox > 
template<>
struct MD5Sum< ::world_manager_msgs::AddBoxResponse>
{
  static const char* value()
  {
    return MD5Sum< ::world_manager_msgs::AddBox >::value();
  }
  static const char* value(const ::world_manager_msgs::AddBoxResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::world_manager_msgs::AddBoxResponse> should match 
// service_traits::DataType< ::world_manager_msgs::AddBox > 
template<>
struct DataType< ::world_manager_msgs::AddBoxResponse>
{
  static const char* value()
  {
    return DataType< ::world_manager_msgs::AddBox >::value();
  }
  static const char* value(const ::world_manager_msgs::AddBoxResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WORLD_MANAGER_MSGS_MESSAGE_ADDBOX_H