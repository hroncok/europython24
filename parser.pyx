# cython: language_level=3
import cython
from cython.cimports.libc.stdio import sscanf


def parse_line(line: bytes) -> cython.float:
    flt: cython.float
    sscanf(line, b'%e', &flt)
    return flt
