// Generated by gencpp from file test_roscpp/BadTestStringString.msg
// DO NOT EDIT!


#ifndef TEST_ROSCPP_MESSAGE_BADTESTSTRINGSTRING_H
#define TEST_ROSCPP_MESSAGE_BADTESTSTRINGSTRING_H

#include <ros/service_traits.h>


#include <test_roscpp/BadTestStringStringRequest.h>
#include <test_roscpp/BadTestStringStringResponse.h>


namespace test_roscpp
{

struct BadTestStringString
{

typedef BadTestStringStringRequest Request;
typedef BadTestStringStringResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct BadTestStringString
} // namespace test_roscpp


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::test_roscpp::BadTestStringString > {
  static const char* value()
  {
    return "6b193467bc2d41be616d6b0e985e2a63";
  }

  static const char* value(const ::test_roscpp::BadTestStringString&) { return value(); }
};

template<>
struct DataType< ::test_roscpp::BadTestStringString > {
  static const char* value()
  {
    return "test_roscpp/BadTestStringString";
  }

  static const char* value(const ::test_roscpp::BadTestStringString&) { return value(); }
};


// service_traits::MD5Sum< ::test_roscpp::BadTestStringStringRequest> should match 
// service_traits::MD5Sum< ::test_roscpp::BadTestStringString > 
template<>
struct MD5Sum< ::test_roscpp::BadTestStringStringRequest>
{
  static const char* value()
  {
    return MD5Sum< ::test_roscpp::BadTestStringString >::value();
  }
  static const char* value(const ::test_roscpp::BadTestStringStringRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::test_roscpp::BadTestStringStringRequest> should match 
// service_traits::DataType< ::test_roscpp::BadTestStringString > 
template<>
struct DataType< ::test_roscpp::BadTestStringStringRequest>
{
  static const char* value()
  {
    return DataType< ::test_roscpp::BadTestStringString >::value();
  }
  static const char* value(const ::test_roscpp::BadTestStringStringRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::test_roscpp::BadTestStringStringResponse> should match 
// service_traits::MD5Sum< ::test_roscpp::BadTestStringString > 
template<>
struct MD5Sum< ::test_roscpp::BadTestStringStringResponse>
{
  static const char* value()
  {
    return MD5Sum< ::test_roscpp::BadTestStringString >::value();
  }
  static const char* value(const ::test_roscpp::BadTestStringStringResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::test_roscpp::BadTestStringStringResponse> should match 
// service_traits::DataType< ::test_roscpp::BadTestStringString > 
template<>
struct DataType< ::test_roscpp::BadTestStringStringResponse>
{
  static const char* value()
  {
    return DataType< ::test_roscpp::BadTestStringString >::value();
  }
  static const char* value(const ::test_roscpp::BadTestStringStringResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TEST_ROSCPP_MESSAGE_BADTESTSTRINGSTRING_H