// Generated by gencpp from file test_rosmaster/RossrvARequest.msg
// DO NOT EDIT!


#ifndef TEST_ROSMASTER_MESSAGE_ROSSRVAREQUEST_H
#define TEST_ROSMASTER_MESSAGE_ROSSRVAREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace test_rosmaster
{
template <class ContainerAllocator>
struct RossrvARequest_
{
  typedef RossrvARequest_<ContainerAllocator> Type;

  RossrvARequest_()
    : areq(0)  {
    }
  RossrvARequest_(const ContainerAllocator& _alloc)
    : areq(0)  {
  (void)_alloc;
    }



   typedef int32_t _areq_type;
  _areq_type areq;





  typedef boost::shared_ptr< ::test_rosmaster::RossrvARequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::test_rosmaster::RossrvARequest_<ContainerAllocator> const> ConstPtr;

}; // struct RossrvARequest_

typedef ::test_rosmaster::RossrvARequest_<std::allocator<void> > RossrvARequest;

typedef boost::shared_ptr< ::test_rosmaster::RossrvARequest > RossrvARequestPtr;
typedef boost::shared_ptr< ::test_rosmaster::RossrvARequest const> RossrvARequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::test_rosmaster::RossrvARequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::test_rosmaster::RossrvARequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace test_rosmaster

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'test_rosmaster': ['/home/roskinetic/Observation-learning-Real-world/catkin_ws/src/ros_comm/test/test_rosmaster/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::test_rosmaster::RossrvARequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::test_rosmaster::RossrvARequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::test_rosmaster::RossrvARequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::test_rosmaster::RossrvARequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test_rosmaster::RossrvARequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test_rosmaster::RossrvARequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::test_rosmaster::RossrvARequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0217cf2f145df7686492b0471b5ecf7a";
  }

  static const char* value(const ::test_rosmaster::RossrvARequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0217cf2f145df768ULL;
  static const uint64_t static_value2 = 0x6492b0471b5ecf7aULL;
};

template<class ContainerAllocator>
struct DataType< ::test_rosmaster::RossrvARequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "test_rosmaster/RossrvARequest";
  }

  static const char* value(const ::test_rosmaster::RossrvARequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::test_rosmaster::RossrvARequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 areq\n\
";
  }

  static const char* value(const ::test_rosmaster::RossrvARequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::test_rosmaster::RossrvARequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.areq);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RossrvARequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::test_rosmaster::RossrvARequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::test_rosmaster::RossrvARequest_<ContainerAllocator>& v)
  {
    s << indent << "areq: ";
    Printer<int32_t>::stream(s, indent + "  ", v.areq);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEST_ROSMASTER_MESSAGE_ROSSRVAREQUEST_H
