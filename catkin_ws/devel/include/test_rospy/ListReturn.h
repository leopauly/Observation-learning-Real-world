// Generated by gencpp from file test_rospy/ListReturn.msg
// DO NOT EDIT!


#ifndef TEST_ROSPY_MESSAGE_LISTRETURN_H
#define TEST_ROSPY_MESSAGE_LISTRETURN_H

#include <ros/service_traits.h>


#include <test_rospy/ListReturnRequest.h>
#include <test_rospy/ListReturnResponse.h>


namespace test_rospy
{

struct ListReturn
{

typedef ListReturnRequest Request;
typedef ListReturnResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ListReturn
} // namespace test_rospy


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::test_rospy::ListReturn > {
  static const char* value()
  {
    return "8083abf57e6eb0ff97ebb506984b66b8";
  }

  static const char* value(const ::test_rospy::ListReturn&) { return value(); }
};

template<>
struct DataType< ::test_rospy::ListReturn > {
  static const char* value()
  {
    return "test_rospy/ListReturn";
  }

  static const char* value(const ::test_rospy::ListReturn&) { return value(); }
};


// service_traits::MD5Sum< ::test_rospy::ListReturnRequest> should match 
// service_traits::MD5Sum< ::test_rospy::ListReturn > 
template<>
struct MD5Sum< ::test_rospy::ListReturnRequest>
{
  static const char* value()
  {
    return MD5Sum< ::test_rospy::ListReturn >::value();
  }
  static const char* value(const ::test_rospy::ListReturnRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::test_rospy::ListReturnRequest> should match 
// service_traits::DataType< ::test_rospy::ListReturn > 
template<>
struct DataType< ::test_rospy::ListReturnRequest>
{
  static const char* value()
  {
    return DataType< ::test_rospy::ListReturn >::value();
  }
  static const char* value(const ::test_rospy::ListReturnRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::test_rospy::ListReturnResponse> should match 
// service_traits::MD5Sum< ::test_rospy::ListReturn > 
template<>
struct MD5Sum< ::test_rospy::ListReturnResponse>
{
  static const char* value()
  {
    return MD5Sum< ::test_rospy::ListReturn >::value();
  }
  static const char* value(const ::test_rospy::ListReturnResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::test_rospy::ListReturnResponse> should match 
// service_traits::DataType< ::test_rospy::ListReturn > 
template<>
struct DataType< ::test_rospy::ListReturnResponse>
{
  static const char* value()
  {
    return DataType< ::test_rospy::ListReturn >::value();
  }
  static const char* value(const ::test_rospy::ListReturnResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TEST_ROSPY_MESSAGE_LISTRETURN_H
