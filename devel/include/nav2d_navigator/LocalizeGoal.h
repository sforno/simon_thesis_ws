// Generated by gencpp from file nav2d_navigator/LocalizeGoal.msg
// DO NOT EDIT!


#ifndef NAV2D_NAVIGATOR_MESSAGE_LOCALIZEGOAL_H
#define NAV2D_NAVIGATOR_MESSAGE_LOCALIZEGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace nav2d_navigator
{
template <class ContainerAllocator>
struct LocalizeGoal_
{
  typedef LocalizeGoal_<ContainerAllocator> Type;

  LocalizeGoal_()
    : velocity(0.0)  {
    }
  LocalizeGoal_(const ContainerAllocator& _alloc)
    : velocity(0.0)  {
  (void)_alloc;
    }



   typedef float _velocity_type;
  _velocity_type velocity;




  typedef boost::shared_ptr< ::nav2d_navigator::LocalizeGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nav2d_navigator::LocalizeGoal_<ContainerAllocator> const> ConstPtr;

}; // struct LocalizeGoal_

typedef ::nav2d_navigator::LocalizeGoal_<std::allocator<void> > LocalizeGoal;

typedef boost::shared_ptr< ::nav2d_navigator::LocalizeGoal > LocalizeGoalPtr;
typedef boost::shared_ptr< ::nav2d_navigator::LocalizeGoal const> LocalizeGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::nav2d_navigator::LocalizeGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::nav2d_navigator::LocalizeGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace nav2d_navigator

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav2d_navigator': ['/home/simoneforno/simon_ws/devel/share/nav2d_navigator/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::nav2d_navigator::LocalizeGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nav2d_navigator::LocalizeGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nav2d_navigator::LocalizeGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nav2d_navigator::LocalizeGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nav2d_navigator::LocalizeGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nav2d_navigator::LocalizeGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::nav2d_navigator::LocalizeGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e4ff88b32504f688719a85e0753f63ce";
  }

  static const char* value(const ::nav2d_navigator::LocalizeGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe4ff88b32504f688ULL;
  static const uint64_t static_value2 = 0x719a85e0753f63ceULL;
};

template<class ContainerAllocator>
struct DataType< ::nav2d_navigator::LocalizeGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nav2d_navigator/LocalizeGoal";
  }

  static const char* value(const ::nav2d_navigator::LocalizeGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::nav2d_navigator::LocalizeGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
float32 velocity\n\
";
  }

  static const char* value(const ::nav2d_navigator::LocalizeGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::nav2d_navigator::LocalizeGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.velocity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LocalizeGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nav2d_navigator::LocalizeGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::nav2d_navigator::LocalizeGoal_<ContainerAllocator>& v)
  {
    s << indent << "velocity: ";
    Printer<float>::stream(s, indent + "  ", v.velocity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAV2D_NAVIGATOR_MESSAGE_LOCALIZEGOAL_H
