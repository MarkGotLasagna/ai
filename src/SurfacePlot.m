%% Surface plotting for a given function in MATLAB
% source: https://github.com/MarkGotLasagna/ai/src/SurfacePlot.m

%         DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE 
%                     Version 2, December 2004 
% 
%  Copyright (C) 2004 Sam Hocevar <sam@hocevar.net> 
% 
%  Everyone is permitted to copy and distribute verbatim or modified 
%  copies of this license document, and changing it is allowed as long 
%  as the name is changed. 
% 
%             DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE 
%    TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION 
% 
%   0. You just DO WHAT THE FUCK YOU WANT TO.

clc, clearvars, close all

%%% The Function
f = @(x,y) 3.*x.^3-2.*y.^2+7;         % anonymous function
syms fs xs ys
fs = 3.*xs.^3-2.*ys.^2+7;             % symbolic expression


%%% The Visualization
x = -5:.2:5;
y = -5:.2:5;
[X,Y] = meshgrid(x,y);
Z = f(X,Y);

surf(X,Y,Z), hold on
xlabel('X'),ylabel('Y'),zlabel('Z')