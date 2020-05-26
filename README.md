
Implementation of the convergence index iris filter to enhance regions that contain nuclei in fluorescence microscopy images. Code based on Wei, J., Hagihara, Y., & Kobatake, H. (1999, October). Detection of cancerous tumors on chest X-ray images-candidate detection filter and its evaluation. In Proceedings 1999 International Conference on Image Processing (Cat. 99CH36348) (Vol. 3, pp. 397-401). IEEE.


** How to use it: **

1 - In main.m change the directory in line 2, and change the value of N in line 5 according to the mean size of the nuclei, for instance, if nuclei have mean size of 80, N should be 40.

2 - Run main.m, it will output the gradient convergence map obtained with the iris filter ("conv_map").

