// Generated by gencpp from file robot_localization_cust/SetDatumRequest.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCALIZATION_CUST_MESSAGE_SETDATUMREQUEST_H
#define ROBOT_LOCALIZATION_CUST_MESSAGE_SETDATUMREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geographic_msgs/GeoPose.h>

namespace robot_localization_cust
{
template <class ContainerAllocator>
struct SetDatumRequest_
{
  typedef SetDatumRequest_<ContainerAllocator> Type;

  SetDatumRequest_()
    : geo_pose()  {
    }
  SetDatumRequest_(const ContainerAllocator& _alloc)
    : geo_pose(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geographic_msgs::GeoPose_<ContainerAllocator>  _geo_pose_type;
  _geo_pose_type geo_pose;




  typedef boost::shared_ptr< ::robot_localization_cust::SetDatumRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_localization_cust::SetDatumRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetDatumRequest_

typedef ::robot_localization_cust::SetDatumRequest_<std::allocator<void> > SetDatumRequest;

typedef boost::shared_ptr< ::robot_localization_cust::SetDatumRequest > SetDatumRequestPtr;
typedef boost::shared_ptr< ::robot_localization_cust::SetDatumRequest const> SetDatumRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_localization_cust::SetDatumRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_localization_cust::SetDatumRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robot_localization_cust

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geographic_msgs': ['/opt/ros/kinetic/share/geographic_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'uuid_msgs': ['/opt/ros/kinetic/share/uuid_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robot_localization_cust::SetDatumRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_localization_cust::SetDatumRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_localization_cust::SetDatumRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_localization_cust::SetDatumRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_localization_cust::SetDatumRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_localization_cust::SetDatumRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_localization_cust::SetDatumRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fe903ca95d0210defda73a1629604439";
  }

  static const char* value(const ::robot_localization_cust::SetDatumRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfe903ca95d0210deULL;
  static const uint64_t static_value2 = 0xfda73a1629604439ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_localization_cust::SetDatumRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_localization_cust/SetDatumRequest";
  }

  static const char* value(const ::robot_localization_cust::SetDatumRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_localization_cust::SetDatumRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geographic_msgs/GeoPose geo_pose\n\
\n\
================================================================================\n\
MSG: geographic_msgs/GeoPose\n\
# Geographic pose, using the WGS 84 reference ellipsoid.\n\
#\n\
# Orientation uses the East-North-Up (ENU) frame of reference.\n\
# (But, what about singularities at the poles?)\n\
\n\
GeoPoint position\n\
geometry_msgs/Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geographic_msgs/GeoPoint\n\
# Geographic point, using the WGS 84 reference ellipsoid.\n\
\n\
# Latitude [degrees]. Positive is north of equator; negative is south\n\
# (-90 <= latitude <= +90).\n\
float64 latitude\n\
\n\
# Longitude [degrees]. Positive is east of prime meridian; negative is\n\
# west (-180 <= longitude <= +180). At the poles, latitude is -90 or\n\
# +90, and longitude is irrelevant, but must be in range.\n\
float64 longitude\n\
\n\
# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).\n\
float64 altitude\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::robot_localization_cust::SetDatumRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_localization_cust::SetDatumRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.geo_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetDatumRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_localization_cust::SetDatumRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_localization_cust::SetDatumRequest_<ContainerAllocator>& v)
  {
    s << indent << "geo_pose: ";
    s << std::endl;
    Printer< ::geographic_msgs::GeoPose_<ContainerAllocator> >::stream(s, indent + "  ", v.geo_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_LOCALIZATION_CUST_MESSAGE_SETDATUMREQUEST_H
