// Generated by gencpp from file test_rosmaster/RosmsgC.msg
// DO NOT EDIT!


#ifndef TEST_ROSMASTER_MESSAGE_ROSMSGC_H
#define TEST_ROSMASTER_MESSAGE_ROSMSGC_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <test_rosmaster/String.h>
#include <test_rosmaster/String.h>

namespace test_rosmaster
{
template <class ContainerAllocator>
struct RosmsgC_
{
  typedef RosmsgC_<ContainerAllocator> Type;

  RosmsgC_()
    : s1()
    , s2()  {
    }
  RosmsgC_(const ContainerAllocator& _alloc)
    : s1(_alloc)
    , s2(_alloc)  {
  (void)_alloc;
    }



   typedef  ::test_rosmaster::String_<ContainerAllocator>  _s1_type;
  _s1_type s1;

   typedef  ::test_rosmaster::String_<ContainerAllocator>  _s2_type;
  _s2_type s2;





  typedef boost::shared_ptr< ::test_rosmaster::RosmsgC_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::test_rosmaster::RosmsgC_<ContainerAllocator> const> ConstPtr;

}; // struct RosmsgC_

typedef ::test_rosmaster::RosmsgC_<std::allocator<void> > RosmsgC;

typedef boost::shared_ptr< ::test_rosmaster::RosmsgC > RosmsgCPtr;
typedef boost::shared_ptr< ::test_rosmaster::RosmsgC const> RosmsgCConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::test_rosmaster::RosmsgC_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::test_rosmaster::RosmsgC_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace test_rosmaster

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'test_rosmaster': ['/home/roskinetic/Observation-learning-Real-world/catkin_ws/src/ros_comm/test/test_rosmaster/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::test_rosmaster::RosmsgC_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::test_rosmaster::RosmsgC_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::test_rosmaster::RosmsgC_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::test_rosmaster::RosmsgC_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test_rosmaster::RosmsgC_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test_rosmaster::RosmsgC_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::test_rosmaster::RosmsgC_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cc91a7e3c1498150f3554cbcab2800d2";
  }

  static const char* value(const ::test_rosmaster::RosmsgC_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcc91a7e3c1498150ULL;
  static const uint64_t static_value2 = 0xf3554cbcab2800d2ULL;
};

template<class ContainerAllocator>
struct DataType< ::test_rosmaster::RosmsgC_<ContainerAllocator> >
{
  static const char* value()
  {
    return "test_rosmaster/RosmsgC";
  }

  static const char* value(const ::test_rosmaster::RosmsgC_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::test_rosmaster::RosmsgC_<ContainerAllocator> >
{
  static const char* value()
  {
    return "String s1\n\
String s2\n\
\n\
================================================================================\n\
MSG: test_rosmaster/String\n\
# Copy of std_msgs/String.msg to avoid having tests require a dependency on std_msgs.\n\
string data\n\
";
  }

  static const char* value(const ::test_rosmaster::RosmsgC_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::test_rosmaster::RosmsgC_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.s1);
      stream.next(m.s2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RosmsgC_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::test_rosmaster::RosmsgC_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::test_rosmaster::RosmsgC_<ContainerAllocator>& v)
  {
    s << indent << "s1: ";
    s << std::endl;
    Printer< ::test_rosmaster::String_<ContainerAllocator> >::stream(s, indent + "  ", v.s1);
    s << indent << "s2: ";
    s << std::endl;
    Printer< ::test_rosmaster::String_<ContainerAllocator> >::stream(s, indent + "  ", v.s2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEST_ROSMASTER_MESSAGE_ROSMSGC_H
