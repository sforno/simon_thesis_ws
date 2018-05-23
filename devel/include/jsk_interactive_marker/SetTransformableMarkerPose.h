// Generated by gencpp from file jsk_interactive_marker/SetTransformableMarkerPose.msg
// DO NOT EDIT!


#ifndef JSK_INTERACTIVE_MARKER_MESSAGE_SETTRANSFORMABLEMARKERPOSE_H
#define JSK_INTERACTIVE_MARKER_MESSAGE_SETTRANSFORMABLEMARKERPOSE_H

#include <ros/service_traits.h>


#include <jsk_interactive_marker/SetTransformableMarkerPoseRequest.h>
#include <jsk_interactive_marker/SetTransformableMarkerPoseResponse.h>


namespace jsk_interactive_marker
{

struct SetTransformableMarkerPose
{

typedef SetTransformableMarkerPoseRequest Request;
typedef SetTransformableMarkerPoseResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetTransformableMarkerPose
} // namespace jsk_interactive_marker


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::jsk_interactive_marker::SetTransformableMarkerPose > {
  static const char* value()
  {
    return "e19607b29b4528e87feff290fe261191";
  }

  static const char* value(const ::jsk_interactive_marker::SetTransformableMarkerPose&) { return value(); }
};

template<>
struct DataType< ::jsk_interactive_marker::SetTransformableMarkerPose > {
  static const char* value()
  {
    return "jsk_interactive_marker/SetTransformableMarkerPose";
  }

  static const char* value(const ::jsk_interactive_marker::SetTransformableMarkerPose&) { return value(); }
};


// service_traits::MD5Sum< ::jsk_interactive_marker::SetTransformableMarkerPoseRequest> should match 
// service_traits::MD5Sum< ::jsk_interactive_marker::SetTransformableMarkerPose > 
template<>
struct MD5Sum< ::jsk_interactive_marker::SetTransformableMarkerPoseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::jsk_interactive_marker::SetTransformableMarkerPose >::value();
  }
  static const char* value(const ::jsk_interactive_marker::SetTransformableMarkerPoseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::jsk_interactive_marker::SetTransformableMarkerPoseRequest> should match 
// service_traits::DataType< ::jsk_interactive_marker::SetTransformableMarkerPose > 
template<>
struct DataType< ::jsk_interactive_marker::SetTransformableMarkerPoseRequest>
{
  static const char* value()
  {
    return DataType< ::jsk_interactive_marker::SetTransformableMarkerPose >::value();
  }
  static const char* value(const ::jsk_interactive_marker::SetTransformableMarkerPoseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::jsk_interactive_marker::SetTransformableMarkerPoseResponse> should match 
// service_traits::MD5Sum< ::jsk_interactive_marker::SetTransformableMarkerPose > 
template<>
struct MD5Sum< ::jsk_interactive_marker::SetTransformableMarkerPoseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::jsk_interactive_marker::SetTransformableMarkerPose >::value();
  }
  static const char* value(const ::jsk_interactive_marker::SetTransformableMarkerPoseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::jsk_interactive_marker::SetTransformableMarkerPoseResponse> should match 
// service_traits::DataType< ::jsk_interactive_marker::SetTransformableMarkerPose > 
template<>
struct DataType< ::jsk_interactive_marker::SetTransformableMarkerPoseResponse>
{
  static const char* value()
  {
    return DataType< ::jsk_interactive_marker::SetTransformableMarkerPose >::value();
  }
  static const char* value(const ::jsk_interactive_marker::SetTransformableMarkerPoseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // JSK_INTERACTIVE_MARKER_MESSAGE_SETTRANSFORMABLEMARKERPOSE_H