// Generated by gencpp from file jsk_rviz_plugins/ScreenshotRequest.msg
// DO NOT EDIT!


#ifndef JSK_RVIZ_PLUGINS_MESSAGE_SCREENSHOTREQUEST_H
#define JSK_RVIZ_PLUGINS_MESSAGE_SCREENSHOTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace jsk_rviz_plugins
{
template <class ContainerAllocator>
struct ScreenshotRequest_
{
  typedef ScreenshotRequest_<ContainerAllocator> Type;

  ScreenshotRequest_()
    : file_name()  {
    }
  ScreenshotRequest_(const ContainerAllocator& _alloc)
    : file_name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _file_name_type;
  _file_name_type file_name;




  typedef boost::shared_ptr< ::jsk_rviz_plugins::ScreenshotRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::jsk_rviz_plugins::ScreenshotRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ScreenshotRequest_

typedef ::jsk_rviz_plugins::ScreenshotRequest_<std::allocator<void> > ScreenshotRequest;

typedef boost::shared_ptr< ::jsk_rviz_plugins::ScreenshotRequest > ScreenshotRequestPtr;
typedef boost::shared_ptr< ::jsk_rviz_plugins::ScreenshotRequest const> ScreenshotRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::jsk_rviz_plugins::ScreenshotRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::jsk_rviz_plugins::ScreenshotRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace jsk_rviz_plugins

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'jsk_rviz_plugins': ['/home/simoneforno/simon_ws/src/jsk_visualization/jsk_rviz_plugins/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::jsk_rviz_plugins::ScreenshotRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jsk_rviz_plugins::ScreenshotRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jsk_rviz_plugins::ScreenshotRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jsk_rviz_plugins::ScreenshotRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jsk_rviz_plugins::ScreenshotRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jsk_rviz_plugins::ScreenshotRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::jsk_rviz_plugins::ScreenshotRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2415261c9605b9f38867ffbbe495fc04";
  }

  static const char* value(const ::jsk_rviz_plugins::ScreenshotRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2415261c9605b9f3ULL;
  static const uint64_t static_value2 = 0x8867ffbbe495fc04ULL;
};

template<class ContainerAllocator>
struct DataType< ::jsk_rviz_plugins::ScreenshotRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "jsk_rviz_plugins/ScreenshotRequest";
  }

  static const char* value(const ::jsk_rviz_plugins::ScreenshotRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::jsk_rviz_plugins::ScreenshotRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string file_name\n\
";
  }

  static const char* value(const ::jsk_rviz_plugins::ScreenshotRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::jsk_rviz_plugins::ScreenshotRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.file_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ScreenshotRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::jsk_rviz_plugins::ScreenshotRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::jsk_rviz_plugins::ScreenshotRequest_<ContainerAllocator>& v)
  {
    s << indent << "file_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.file_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JSK_RVIZ_PLUGINS_MESSAGE_SCREENSHOTREQUEST_H