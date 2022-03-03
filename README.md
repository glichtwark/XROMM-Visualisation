# XROMM-Visualisation
Matlab code and app for visualising data from XROMM system, that has been processed using XMALab and Autoscoper. Optional visualisation of motion capture markers if co-registration transformation between x-ray and mocap systems is available. 

![alt text](https://github.com/glichtwark/XROMM-Visualisation/blob/main/application_screenshot.JPG)

Notes:
- Bone files in list must match equivalent value in tacking file list - hence must have the same number of bones as tracking files
- Frame slider restricted to frames where there was XROMM data collected - data may not have been tracked through this whole period
- If motion capture data (C3D or MAT) file is present along with a text file containing the co-registration transformation matrix between the XROMM and Mocap coordinate systems, then visualisation is shown in the Mocap coordinate system
- Note that there is a slight timing difference between systems, such that the rate of the motion capture is 101.01% that of the xray. This is adjusted for in the app via an interpolation routine

Uses BTKToolkit for loading C3D files (will need to be installed and on path for working with app source code) - http://biomechanical-toolkit.github.io/docs/Wrapping/Matlab/_tutorial.html

Code developed by Dr Jayishni Maharaj in collaboration with Dr Glen Lichtwark
