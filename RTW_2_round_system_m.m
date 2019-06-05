%%
% for single car

clear;
clc;
close all;

LK1=[-1 0;0 -1];
E=eye(2);
x0=[0 0]';
v0=[0 0]';

xd=[10 10];


%%
%display

figure
x_trajectory_1=trajectory(:,1);
y_trajectory_1=trajectory(:,2);

plot(x_trajectory_1,y_trajectory_1)

hold on
x_path_1=path(:,1);
y_path_1=path(:,2);
plot(x_path_1,y_path_1,'-.')