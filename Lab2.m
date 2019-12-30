% Column definitions in the data.dat files in each folder: 
%time (s) | P_01 (psi) | P_1 (psi) | Patm (psi) | T_01 (degree F)
% 
% Notes:
% - The folders are divided based on the block numbers and wedge angle. 
% - You can digitize Figure 4 from the handout using a plot digitizer 
%   (https://automeris.io/WebPlotDigitizer/).

% - Each folder has the pressure data and the Schlieren images for the 
%   different wedge angles tested at the corresponding block setting.  

% - Choosing the appropriate image from the set of 20 for a given wedge 
%   angle and block setting is the only part of your post-processing that 
%   is manual. All subsequent post-processing must be automated. 

% - The wedge angle (\theta) and shock angle (\beta) is calculated in 
%   reference to the direction of the freestream flow, which in our case,
%   is parallel to the wind-tunnel walls.

% - All recorded pressures are gauge pressures. Remember to add the 
%   atmospheric pressure during your analysis.
% - Only consider data beyond 2.5 seconds of run time.

% - The report needs to be in the AIAA prescribed format.

% - All results in your final report need to be in SI units.

% - As discussed in the lab, focus on critial analysis. Point out and 
%   discuss interesting trends (if any) in the data.

clear all
close all
clc

filread = [6,16];
cd Lab2 all-data
alldata = dir(pwd);
alldata = all

images = dir(sprintf('%s/DSC_*.jpg', wdir));

variation1 = diff(img_g); 
variation2 = diff(img_g, 2);
edgeTol1 = max(mean(variation1));
edgeTol2 = max(mean(variation2)); 
threshold = mean([edgeTol1, edgeTol2])*.18;

img_canny = edge(img_grayscale, 'canny', threshold);
























