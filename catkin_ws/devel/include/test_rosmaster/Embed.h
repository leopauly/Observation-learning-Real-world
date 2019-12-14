// Generated by gencpp from file test_rosmaster/Embed.msg
// DO NOT EDIT!


#ifndef TEST_ROSMASTER_MESSAGE_EMBED_H
#define TEST_ROSMASTER_MESSAGE_EMBED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <test_rosmaster/Simple.h>
#include <test_rosmaster/Arrays.h>

namespace test_rosmaster
{
template <class ContainerAllocator>
struct Embed_
{
  typedef Embed_<ContainerAllocator> Type;

  Embed_()
    : simple()
    , arrays()  {
    }
  Embed_(const ContainerAllocator& _alloc)
    : simple(_alloc)
    , arrays(_alloc)  {
  (void)_alloc;
    }



   typedef  ::test_rosmaster::Simple_<ContainerAllocator>  _simple_type;
  _simple_type simple;

   typedef  ::test_rosmaster::Arrays_<ContainerAllocator>  _arrays_type;
  _arrays_type arrays;





  typedef boost::shared_ptr< ::test_rosmaster::Embed_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::test_rosmaster::Embed_<ContainerAllocator> const> ConstPtr;

}; // struct Embed_

typedef ::test_rosmaster::Embed_<std::allocator<void> > Embed;

typedef boost::shared_ptr< ::test_rosmaster::Embed > EmbedPtr;
typedef boost::shared_ptr< ::test_rosmaster::Embed const> EmbedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::test_rosmaster::Embed_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::test_rosmaster::Embed_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::test_rosmaster::Embed_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::test_rosmaster::Embed_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::test_rosmaster::Embed_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::test_rosmaster::Embed_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test_rosmaster::Embed_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test_rosmaster::Embed_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::test_rosmaster::Embed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6dec891298f3675c2d964c161d28efaa";
  }

  static const char* value(const ::test_rosmaster::Embed_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6dec891298f3675cULL;
  static const uint64_t static_value2 = 0x2d964c161d28efaaULL;
};

template<class ContainerAllocator>
struct DataType< ::test_rosmaster::Embed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "test_rosmaster/Embed";
  }

  static const char* value(const ::test_rosmaster::Embed_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::test_rosmaster::Embed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#for rostopic tests\n\
Simple simple\n\
Arrays arrays\n\
\n\
================================================================================\n\
MSG: test_rosmaster/Simple\n\
# for rostopic tests\n\
byte b\n\
int16 int16\n\
int32 int32\n\
int64 int64\n\
char c\n\
uint16 uint16\n\
uint32 uint32\n\
uint64 uint64\n\
string str\n\
\n\
================================================================================\n\
MSG: test_rosmaster/Arrays\n\
#for rostopic tests\n\
int8[] int8_arr\n\
uint8[] uint8_arr\n\
int32[] int32_arr\n\
uint32[] uint32_arr\n\
string[] string_arr\n\
time[] time_arr\n\
";
  }

  static const char* value(const ::test_rosmaster::Embed_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::test_rosmaster::Embed_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.simple);
      stream.next(m.arrays);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Embed_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::test_rosmaster::Embed_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::test_rosmaster::Embed_<ContainerAllocator>& v)
  {
    s << indent << "simple: ";
    s << std::endl;
    Printer< ::test_rosmaster::Simple_<ContainerAllocator> >::stream(s, indent + "  ", v.simple);
    s << indent << "arrays: ";
    s << std::endl;
    Printer< ::test_rosmaster::Arrays_<ContainerAllocator> >::stream(s, indent + "  ", v.arrays);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEST_ROSMASTER_MESSAGE_EMBED_H
