// Generated by gencpp from file test_rosmaster/RossrvAResponse.msg
// DO NOT EDIT!


#ifndef TEST_ROSMASTER_MESSAGE_ROSSRVARESPONSE_H
#define TEST_ROSMASTER_MESSAGE_ROSSRVARESPONSE_H


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
struct RossrvAResponse_
{
  typedef RossrvAResponse_<ContainerAllocator> Type;

  RossrvAResponse_()
    : aresp(0)  {
    }
  RossrvAResponse_(const ContainerAllocator& _alloc)
    : aresp(0)  {
  (void)_alloc;
    }



   typedef int32_t _aresp_type;
  _aresp_type aresp;





  typedef boost::shared_ptr< ::test_rosmaster::RossrvAResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::test_rosmaster::RossrvAResponse_<ContainerAllocator> const> ConstPtr;

}; // struct RossrvAResponse_

typedef ::test_rosmaster::RossrvAResponse_<std::allocator<void> > RossrvAResponse;

typedef boost::shared_ptr< ::test_rosmaster::RossrvAResponse > RossrvAResponsePtr;
typedef boost::shared_ptr< ::test_rosmaster::RossrvAResponse const> RossrvAResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::test_rosmaster::RossrvAResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::test_rosmaster::RossrvAResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::test_rosmaster::RossrvAResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::test_rosmaster::RossrvAResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::test_rosmaster::RossrvAResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::test_rosmaster::RossrvAResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test_rosmaster::RossrvAResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test_rosmaster::RossrvAResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::test_rosmaster::RossrvAResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7714078796589731036f4da799e23357";
  }

  static const char* value(const ::test_rosmaster::RossrvAResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7714078796589731ULL;
  static const uint64_t static_value2 = 0x036f4da799e23357ULL;
};

template<class ContainerAllocator>
struct DataType< ::test_rosmaster::RossrvAResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "test_rosmaster/RossrvAResponse";
  }

  static const char* value(const ::test_rosmaster::RossrvAResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::test_rosmaster::RossrvAResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 aresp\n\
\n\
";
  }

  static const char* value(const ::test_rosmaster::RossrvAResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::test_rosmaster::RossrvAResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.aresp);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RossrvAResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::test_rosmaster::RossrvAResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::test_rosmaster::RossrvAResponse_<ContainerAllocator>& v)
  {
    s << indent << "aresp: ";
    Printer<int32_t>::stream(s, indent + "  ", v.aresp);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEST_ROSMASTER_MESSAGE_ROSSRVARESPONSE_H
