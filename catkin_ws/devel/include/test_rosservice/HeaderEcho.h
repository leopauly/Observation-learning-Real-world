// Generated by gencpp from file test_rosservice/HeaderEcho.msg
// DO NOT EDIT!


#ifndef TEST_ROSSERVICE_MESSAGE_HEADERECHO_H
#define TEST_ROSSERVICE_MESSAGE_HEADERECHO_H

#include <ros/service_traits.h>


#include <test_rosservice/HeaderEchoRequest.h>
#include <test_rosservice/HeaderEchoResponse.h>


namespace test_rosservice
{

struct HeaderEcho
{

typedef HeaderEchoRequest Request;
typedef HeaderEchoResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct HeaderEcho
} // namespace test_rosservice


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::test_rosservice::HeaderEcho > {
  static const char* value()
  {
    return "3c64cc5ac7e6cbcec5fa7b5ed330b0a6";
  }

  static const char* value(const ::test_rosservice::HeaderEcho&) { return value(); }
};

template<>
struct DataType< ::test_rosservice::HeaderEcho > {
  static const char* value()
  {
    return "test_rosservice/HeaderEcho";
  }

  static const char* value(const ::test_rosservice::HeaderEcho&) { return value(); }
};


// service_traits::MD5Sum< ::test_rosservice::HeaderEchoRequest> should match 
// service_traits::MD5Sum< ::test_rosservice::HeaderEcho > 
template<>
struct MD5Sum< ::test_rosservice::HeaderEchoRequest>
{
  static const char* value()
  {
    return MD5Sum< ::test_rosservice::HeaderEcho >::value();
  }
  static const char* value(const ::test_rosservice::HeaderEchoRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::test_rosservice::HeaderEchoRequest> should match 
// service_traits::DataType< ::test_rosservice::HeaderEcho > 
template<>
struct DataType< ::test_rosservice::HeaderEchoRequest>
{
  static const char* value()
  {
    return DataType< ::test_rosservice::HeaderEcho >::value();
  }
  static const char* value(const ::test_rosservice::HeaderEchoRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::test_rosservice::HeaderEchoResponse> should match 
// service_traits::MD5Sum< ::test_rosservice::HeaderEcho > 
template<>
struct MD5Sum< ::test_rosservice::HeaderEchoResponse>
{
  static const char* value()
  {
    return MD5Sum< ::test_rosservice::HeaderEcho >::value();
  }
  static const char* value(const ::test_rosservice::HeaderEchoResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::test_rosservice::HeaderEchoResponse> should match 
// service_traits::DataType< ::test_rosservice::HeaderEcho > 
template<>
struct DataType< ::test_rosservice::HeaderEchoResponse>
{
  static const char* value()
  {
    return DataType< ::test_rosservice::HeaderEcho >::value();
  }
  static const char* value(const ::test_rosservice::HeaderEchoResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TEST_ROSSERVICE_MESSAGE_HEADERECHO_H