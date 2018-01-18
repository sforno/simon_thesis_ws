// Generated by gencpp from file robot_localization/GetStateRequest.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCALIZATION_MESSAGE_GETSTATEREQUEST_H
#define ROBOT_LOCALIZATION_MESSAGE_GETSTATEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_localization
{
template <class ContainerAllocator>
struct GetStateRequest_
{
  typedef GetStateRequest_<ContainerAllocator> Type;

  GetStateRequest_()
    : time_stamp()
    , frame_id()  {
    }
  GetStateRequest_(const ContainerAllocator& _alloc)
    : time_stamp()
    , frame_id(_alloc)  {
  (void)_alloc;
    }



   typedef ros::Time _time_stamp_type;
  _time_stamp_type time_stamp;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _frame_id_type;
  _frame_id_type frame_id;




  typedef boost::shared_ptr< ::robot_localization::GetStateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_localization::GetStateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetStateRequest_

typedef ::robot_localization::GetStateRequest_<std::allocator<void> > GetStateRequest;

typedef boost::shared_ptr< ::robot_localization::GetStateRequest > GetStateRequestPtr;
typedef boost::shared_ptr< ::robot_localization::GetStateRequest const> GetStateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_localization::GetStateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_localization::GetStateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robot_localization

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geographic_msgs': ['/opt/ros/kinetic/share/geographic_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'uuid_msgs': ['/opt/ros/kinetic/share/uuid_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robot_localization::GetStateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_localization::GetStateRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_localization::GetStateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_localization::GetStateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_localization::GetStateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_localization::GetStateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_localization::GetStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "853815113280ed7c4ea64ad795f27171";
  }

  static const char* value(const ::robot_localization::GetStateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x853815113280ed7cULL;
  static const uint64_t static_value2 = 0x4ea64ad795f27171ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_localization::GetStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_localization/GetStateRequest";
  }

  static const char* value(const ::robot_localization::GetStateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_localization::GetStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time time_stamp\n\
string frame_id\n\
";
  }

  static const char* value(const ::robot_localization::GetStateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_localization::GetStateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.time_stamp);
      stream.next(m.frame_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetStateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_localization::GetStateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_localization::GetStateRequest_<ContainerAllocator>& v)
  {
    s << indent << "time_stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.time_stamp);
    s << indent << "frame_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.frame_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_LOCALIZATION_MESSAGE_GETSTATEREQUEST_H