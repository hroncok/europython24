# cython: language_level=3
from cython.cimports.libc.stdio import sscanf


def parse_line(line: bytes) -> float:
    cdef float flt
    sscanf(line, b'%e', &flt)
    return flt
