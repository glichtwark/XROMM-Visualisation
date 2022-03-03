function [V_transformed] = transformVertices_GL(V,T)
%UNTITLED3 Summary of this function goes here
%   T =     Transfomration matrix from global to local
%   V =    Tthe vertices of a geometry
% Rotation before Translation. 
% Written by Jayishni Maharaj (Griffith) June, 2020

V_transformed = (T(1:3,1:3) *V')' + T(1:3,4)';
end

