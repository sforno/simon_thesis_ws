// Generated by gencpp from file robot_localization_cust/SetDatum.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCALIZATION_CUST_MESSAGE_SETDATUM_H
#define ROBOT_LOCALIZATION_CUST_MESSAGE_SETDATUM_H

#include <ros/service_traits.h>


#include <robot_localization_cust/SetDatumRequest.h>
#include <robot_localization_cust/SetDatumResponse.h>


namespace robot_localization_cust
{

struct SetDatum
{

typedef SetDatumRequest Request;
typedef SetDatumResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetDatum
} // namespace robot_localization_cust


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robot_localization_cust::SetDatum > {
  static const char* value()
  {
    return "fe903ca95d0210defda73a1629604439";
  }

  static const char* value(const ::robot_localization_cust::SetDatum&) { return value(); }
};

template<>
struct DataType< ::robot_localization_cust::SetDatum > {
  static const char* value()
  {
    return "robot_localization_cust/SetDatum";
  }

  static const char* value(const ::robot_localization_cust::SetDatum&) { return value(); }
};


// service_traits::MD5Sum< ::robot_localization_cust::SetDatumRequest> should match 
// service_traits::MD5Sum< ::robot_localization_cust::SetDatum > 
template<>
struct MD5Sum< ::robot_localization_cust::SetDatumRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robot_localization_cust::SetDatum >::value();
  }
  static const char* value(const ::robot_localization_cust::SetDatumRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_localization_cust::SetDatumRequest> should match 
// service_traits::DataType< ::robot_localization_cust::SetDatum > 
template<>
struct DataType< ::robot_localization_cust::SetDatumRequest>
{
  static const char* value()
  {
    return DataType< ::robot_localization_cust::SetDatum >::value();
  }
  static const char* value(const ::robot_localization_cust::SetDatumRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robot_localization_cust::SetDatumResponse> should match 
// service_traits::MD5Sum< ::robot_localization_cust::SetDatum > 
template<>
struct MD5Sum< ::robot_localization_cust::SetDatumResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robot_localization_cust::SetDatum >::value();
  }
  static const char* value(const ::robot_localization_cust::SetDatumResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_localization_cust::SetDatumResponse> should match 
// service_traits::DataType< ::robot_localization_cust::SetDatum > 
template<>
struct DataType< ::robot_localization_cust::SetDatumResponse>
{
  static const char* value()
  {
    return DataType< ::robot_localization_cust::SetDatum >::value();
  }
  static const char* value(const ::robot_localization_cust::SetDatumResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_LOCALIZATION_CUST_MESSAGE_SETDATUM_H