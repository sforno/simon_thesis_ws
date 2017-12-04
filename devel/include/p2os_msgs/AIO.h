// Generated by gencpp from file p2os_msgs/AIO.msg
// DO NOT EDIT!


#ifndef P2OS_MSGS_MESSAGE_AIO_H
#define P2OS_MSGS_MESSAGE_AIO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace p2os_msgs
{
template <class ContainerAllocator>
struct AIO_
{
  typedef AIO_<ContainerAllocator> Type;

  AIO_()
    : voltages_count(0)
    , voltages()  {
    }
  AIO_(const ContainerAllocator& _alloc)
    : voltages_count(0)
    , voltages(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _voltages_count_type;
  _voltages_count_type voltages_count;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _voltages_type;
  _voltages_type voltages;




  typedef boost::shared_ptr< ::p2os_msgs::AIO_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::p2os_msgs::AIO_<ContainerAllocator> const> ConstPtr;

}; // struct AIO_

typedef ::p2os_msgs::AIO_<std::allocator<void> > AIO;

typedef boost::shared_ptr< ::p2os_msgs::AIO > AIOPtr;
typedef boost::shared_ptr< ::p2os_msgs::AIO const> AIOConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::p2os_msgs::AIO_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::p2os_msgs::AIO_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace p2os_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'p2os_msgs': ['/home/simoneforno/simon_ws/src/p2os/p2os_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::p2os_msgs::AIO_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::p2os_msgs::AIO_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::p2os_msgs::AIO_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::p2os_msgs::AIO_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::p2os_msgs::AIO_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::p2os_msgs::AIO_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::p2os_msgs::AIO_<ContainerAllocator> >
{
  static const char* value()
  {
    return "80e4ca5770a3db29064af246946ff4fe";
  }

  static const char* value(const ::p2os_msgs::AIO_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x80e4ca5770a3db29ULL;
  static const uint64_t static_value2 = 0x064af246946ff4feULL;
};

template<class ContainerAllocator>
struct DataType< ::p2os_msgs::AIO_<ContainerAllocator> >
{
  static const char* value()
  {
    return "p2os_msgs/AIO";
  }

  static const char* value(const ::p2os_msgs::AIO_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::p2os_msgs::AIO_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 voltages_count\n\
float32[] voltages\n\
";
  }

  static const char* value(const ::p2os_msgs::AIO_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::p2os_msgs::AIO_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.voltages_count);
      stream.next(m.voltages);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AIO_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::p2os_msgs::AIO_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::p2os_msgs::AIO_<ContainerAllocator>& v)
  {
    s << indent << "voltages_count: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.voltages_count);
    s << indent << "voltages[]" << std::endl;
    for (size_t i = 0; i < v.voltages.size(); ++i)
    {
      s << indent << "  voltages[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.voltages[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // P2OS_MSGS_MESSAGE_AIO_H
