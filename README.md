# XROMM-Visualisation
Matlab code and app for visualising data from XROMM system (https://www.xromm.org/), that has been processed using XMALab and Autoscoper. Optional visualisation of motion capture markers if co-registration transformation between x-ray and mocap systems is available. 

Downloadable executable can be installed via MyAppInstaller_web.exe file in the 'xromm_visualisation_app' --> 'For distribution' folder.  

![alt text](https://github.com/glichtwark/XROMM-Visualisation/blob/main/application_screenshot.JPG)

Installation:
Requires Matlab (compiled on 2021).
Use the 'xromm_visualisation.mlappinstall' file to install, or clone the directory and usee the 'xromm_visualisation.mlapp' file from the Matlab app designer to see source code, along with other functions in directory. App uses BTKToolkit for loading C3D files: will need to be installed and on path for working with app source code - http://biomechanical-toolkit.github.io/docs/Wrapping/Matlab/_tutorial.html

Notes:
- Bone files in list must match equivalent value in tacking file list - hence must have the same number of bones as tracking files
- Frame slider restricted to frames where there was XROMM data collected - data may not have been tracked through this whole period
- If motion capture data (C3D or MAT) file is present along with a text file containing the co-registration transformation matrix between the XROMM and Mocap coordinate systems, then visualisation is shown in the Mocap coordinate system
- Note that there is a slight timing difference between systems, such that the rate of the motion capture is 101.01% that of the xray. This is adjusted for in the app via an interpolation routine



Original code developed by Dr Jayishni Maharaj in collaboration with Dr Glen Lichtwark for the following paper - 

Maharaj, J. N., Rainbow, M. J., Cresswell, A. G., Kessler, S., Konow, N., Gehring, D., & Lichtwark, G. A. (2021). Modelling the complexity of the foot and ankle during human locomotion: the development and validation of a multi-segment foot model using biplanar videoradiography. Computer Methods in Biomechanics and Biomedical Engineering, 1-12.

Other relevant scientific literature - 

Maharaj, J. N., Kessler, S., Rainbow, M. J., D’Andrea, S. E., Konow, N., Kelly, L. A., & Lichtwark, G. A. (2020). The reliability of foot and ankle bone and joint kinematics measured with biplanar videoradiography and manual scientific rotoscoping. Frontiers in Bioengineering and Biotechnology, 8, 106.

Kessler, S. E., Rainbow, M. J., Lichtwark, G. A., Cresswell, A. G., D'Andrea, S. E., Konow, N., & Kelly, L. A. (2019). A direct comparison of biplanar videoradiography and optical motion capture for foot and ankle kinematics. Frontiers in bioengineering and biotechnology, 199.

Welte, L., Kelly, L. A., Kessler, S. E., Lieberman, D. E., D'Andrea, S. E., Lichtwark, G. A., & Rainbow, M. J. (2021). The extensibility of the plantar fascia influences the windlass mechanism during human running. Proceedings of the Royal Society B, 288(1943), 20202095.

Also 
