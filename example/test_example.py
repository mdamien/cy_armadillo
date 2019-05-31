import numpy as np
import numpy_to_arma
from six import print_

if __name__ == "__main__":
    x = np.random.rand(20).reshape(5,4)
    print('saved arma binary', numpy_to_arma.save(x, "yup_it_works.mat"))
    print('saved arma sparse binary', numpy_to_arma.save_sparse("sparsy_works.mat"))
