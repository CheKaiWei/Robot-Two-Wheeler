%%
% for mul cars
clear;
clc;
close all;
L1=[1 0 0 -1;-1 1 0 0;0 -1 1 0;0 0 -1 1];

I2=eye(2);
LK1=kron(L1,I2);
LK1=-LK1;
%E matrix
E=eye(8);
x0=[-10 -10 -10 10 10 10 10 -10];
x02=[x0(1) x0(3) x0(5) x0(7) x0(2) x0(4) x0(6) x0(8)];
x0=x0';

v0=[0 0 0 0 0 0 0 0]';

xd=[0 0 0 0 0 0 0 0];
M=[1 1;1 -1]

%%
figure
x_trajectory_1=trajectory(:,1);
y_trajectory_1=trajectory(:,5);
x_trajectory_2=trajectory(:,2);
y_trajectory_2=trajectory(:,6);
x_trajectory_3=trajectory(:,3);
y_trajectory_3=trajectory(:,7);
x_trajectory_4=trajectory(:,4);
y_trajectory_4=trajectory(:,8);

plot(x_trajectory_1,y_trajectory_1,x_trajectory_2,y_trajectory_2,x_trajectory_3,y_trajectory_3,x_trajectory_4,y_trajectory_4)

hold on
x_path_1=path(:,1);
y_path_1=path(:,2);
x_path_2=path(:,3);
y_path_2=path(:,4);
x_path_3=path(:,5);
y_path_3=path(:,6);
x_path_4=path(:,7);
y_path_4=path(:,8);
plot(x_path_1,y_path_1,'.',x_path_2,y_path_2,'.',x_path_3,y_path_3,'.',x_path_4,y_path_4,'.')