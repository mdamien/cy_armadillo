# cython: language_level=3
import numpy as np
cimport numpy as np

include "cyarma.pyx"
#from cyarma cimport *


def save(np.ndarray[np.double_t, ndim=2] X, str filename):
    cdef mat aX = numpy_to_mat_d(X)
    return aX.save(filename.encode('utf-8'))


def save_sparse(str filename):
    n_rows = 10
    n_cols = 10
    """
    locations = numpy_to_mat_d(X)
    values = locations
    cdef sp_mat aX = sp_mat(locations, values, n_rows, n_cols, True, False)
    """
    cdef sp_mat aX = sp_mat(n_rows, n_cols)
    print("spm_at cols ?", aX.n_cols)
    print("spm_at rows ?", aX.n_rows)
    print("aX[0]", aX[0])
    print("aX.at", aX.at(0, 0))
    print("aX.col + [0]", aX.col(0)[2])
    # aX.col(0)[0] = 42
    cdef vec x = aX.col(0)
    x[2] = 42
    x.raw_print()
    print("aX.col + [0]", aX.col(0)[2])

    aX[1] = 1
    aX[2] = 2
    aX[3] = 42
    aX[0] = 41
    aX.raw_print()

    return aX.save(filename.encode('utf-8'))