import numpy as np
cimport numpy as np

include "cyarma.pyx"
#from cyarma cimport *

def save(np.ndarray[np.double_t, ndim=2] X, str filename):
    cdef mat aX = numpy_to_mat_d(X)
    aX.save(filename.encode('utf-8'))
