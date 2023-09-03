# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from leddar_ros/Specs.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Specs(genpy.Message):
  _md5sum = "7a6f0e497ec5e66f57cae8a1a9782c91"
  _type = "leddar_ros/Specs"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#Channels are organized in a row-major, top-down fashion
uint32 h #horizontal resolution
uint32 v #vertical resolution

# Fiel of Views in degrees
float32 h_fov #horizontal fov
float32 v_fov #vertical fov
"""
  __slots__ = ['h','v','h_fov','v_fov']
  _slot_types = ['uint32','uint32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       h,v,h_fov,v_fov

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Specs, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.h is None:
        self.h = 0
      if self.v is None:
        self.v = 0
      if self.h_fov is None:
        self.h_fov = 0.
      if self.v_fov is None:
        self.v_fov = 0.
    else:
      self.h = 0
      self.v = 0
      self.h_fov = 0.
      self.v_fov = 0.

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
      _x = self
      buff.write(_get_struct_2I2f().pack(_x.h, _x.v, _x.h_fov, _x.v_fov))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.h, _x.v, _x.h_fov, _x.v_fov,) = _get_struct_2I2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2I2f().pack(_x.h, _x.v, _x.h_fov, _x.v_fov))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.h, _x.v, _x.h_fov, _x.v_fov,) = _get_struct_2I2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I2f = None
def _get_struct_2I2f():
    global _struct_2I2f
    if _struct_2I2f is None:
        _struct_2I2f = struct.Struct("<2I2f")
    return _struct_2I2f