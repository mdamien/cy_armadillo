import numpy as np
import numpy_to_arma
from six import print_

if __name__ == "__main__":
    x = np.random.rand(20).reshape(5,4)
    numpy_to_arma.save(x, "yup_it_works.sp_mat")
