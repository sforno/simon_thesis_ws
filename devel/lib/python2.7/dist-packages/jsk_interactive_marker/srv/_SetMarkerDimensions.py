# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from jsk_interactive_marker/SetMarkerDimensionsRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import jsk_interactive_marker.msg

class SetMarkerDimensionsRequest(genpy.Message):
  _md5sum = "68f212be16364271f11f516c3f033749"
  _type = "jsk_interactive_marker/SetMarkerDimensionsRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """string target_name
MarkerDimensions dimensions

================================================================================
MSG: jsk_interactive_marker/MarkerDimensions
float32 x
float32 y
float32 z
float32 radius
float32 small_radius
int32 type
"""
  __slots__ = ['target_name','dimensions']
  _slot_types = ['string','jsk_interactive_marker/MarkerDimensions']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       target_name,dimensions

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetMarkerDimensionsRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.target_name is None:
        self.target_name = ''
      if self.dimensions is None:
        self.dimensions = jsk_interactive_marker.msg.MarkerDimensions()
    else:
      self.target_name = ''
      self.dimensions = jsk_interactive_marker.msg.MarkerDimensions()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.target_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_5fi().pack(_x.dimensions.x, _x.dimensions.y, _x.dimensions.z, _x.dimensions.radius, _x.dimensions.small_radius, _x.dimensions.type))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.dimensions is None:
        self.dimensions = jsk_interactive_marker.msg.MarkerDimensions()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.target_name = str[start:end].decode('utf-8')
      else:
        self.target_name = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.dimensions.x, _x.dimensions.y, _x.dimensions.z, _x.dimensions.radius, _x.dimensions.small_radius, _x.dimensions.type,) = _get_struct_5fi().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.target_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_5fi().pack(_x.dimensions.x, _x.dimensions.y, _x.dimensions.z, _x.dimensions.radius, _x.dimensions.small_radius, _x.dimensions.type))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.dimensions is None:
        self.dimensions = jsk_interactive_marker.msg.MarkerDimensions()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.target_name = str[start:end].decode('utf-8')
      else:
        self.target_name = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.dimensions.x, _x.dimensions.y, _x.dimensions.z, _x.dimensions.radius, _x.dimensions.small_radius, _x.dimensions.type,) = _get_struct_5fi().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_5fi = None
def _get_struct_5fi():
    global _struct_5fi
    if _struct_5fi is None:
        _struct_5fi = struct.Struct("<5fi")
    return _struct_5fi
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from jsk_interactive_marker/SetMarkerDimensionsResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SetMarkerDimensionsResponse(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "jsk_interactive_marker/SetMarkerDimensionsResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """
"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetMarkerDimensionsResponse, self).__init__(*args, **kwds)

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
class SetMarkerDimensions(object):
  _type          = 'jsk_interactive_marker/SetMarkerDimensions'
  _md5sum = '68f212be16364271f11f516c3f033749'
  _request_class  = SetMarkerDimensionsRequest
  _response_class = SetMarkerDimensionsResponse