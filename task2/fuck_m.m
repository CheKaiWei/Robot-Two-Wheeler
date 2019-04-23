%%
% for single car

clear;
clc;
close all;

LK1=[-1 0;0 -1]'
E=eye(2);
x0=[0 0]';
v0=[0 0]';

xd=[10 10];


%%
% for mul cars
clear
L1=[1 0 0 -1;-1 1 0 0;0 -1 1 0;0 0 -1 1];

I2=eye(2);
LK1=kron(L1,I2);
LK1=-LK1;
%E matrix
E=eye(8);
x0=[0 0 0 0 0 0 0 0]';
v0=[0 0 0 0 0 0 0 0]';

xd=[10 10 10 10 10 10 10 10];


%%
figure
x_trajectory=trajectory(:,1);
y_trajectory=trajectory(:,2);
plot(x_trajectory,y_trajectory)

hold on
x_path=path(:,1);
y_path=path(:,2);
plot(x_path,y_path)
