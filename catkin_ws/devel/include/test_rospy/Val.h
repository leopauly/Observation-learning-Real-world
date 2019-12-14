// Generated by gencpp from file test_rospy/Val.msg
// DO NOT EDIT!


#ifndef TEST_ROSPY_MESSAGE_VAL_H
#define TEST_ROSPY_MESSAGE_VAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace test_rospy
{
template <class ContainerAllocator>
struct Val_
{
  typedef Val_<ContainerAllocator> Type;

  Val_()
    : val()  {
    }
  Val_(const ContainerAllocator& _alloc)
    : val(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _val_type;
  _val_type val;





  typedef boost::shared_ptr< ::test_rospy::Val_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::test_rospy::Val_<ContainerAllocator> const> ConstPtr;

}; // struct Val_

typedef ::test_rospy::Val_<std::allocator<void> > Val;

typedef boost::shared_ptr< ::test_rospy::Val > ValPtr;
typedef boost::shared_ptr< ::test_rospy::Val const> ValConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::test_rospy::Val_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::test_rospy::Val_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace test_rospy

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'test_rospy': ['/home/roskinetic/Observation-learning-Real-world/catkin_ws/src/ros_comm/test/test_rospy/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'test_rosmaster': ['/home/roskinetic/Observation-learning-Real-world/catkin_ws/src/ros_comm/test/test_rosmaster/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::test_rospy::Val_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::test_rospy::Val_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::test_rospy::Val_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::test_rospy::Val_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test_rospy::Val_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test_rospy::Val_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::test_rospy::Val_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c45577ce53559408f0f69fe465be7c70";
  }

  static const char* value(const ::test_rospy::Val_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc45577ce53559408ULL;
  static const uint64_t static_value2 = 0xf0f69fe465be7c70ULL;
};

template<class ContainerAllocator>
struct DataType< ::test_rospy::Val_<ContainerAllocator> >
{
  static const char* value()
  {
    return "test_rospy/Val";
  }

  static const char* value(const ::test_rospy::Val_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::test_rospy::Val_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string val\n\
";
  }

  static const char* value(const ::test_rospy::Val_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::test_rospy::Val_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.val);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Val_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::test_rospy::Val_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::test_rospy::Val_<ContainerAllocator>& v)
  {
    s << indent << "val: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.val);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEST_ROSPY_MESSAGE_VAL_H
