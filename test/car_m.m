%%
%project: develop the dynamic model of cluster robot control
%this file is the final project of my cluster robot control 
%2019.3.31 
%richard
%environment: matlab1016b

%%
clear;
clc;
close all;
%create LK1
%L1=[1 0 0 -1;-1 1 0 0;0 -1 1 0;0 0 -1 1];
% 
% I2=eye(2);
% LK1=kron(L1,I2);
% LK1=-LK1;
%E matrix

%E=eye(8);
LK1=[-1 0;0 -1]'
E=eye(2);
%axi of the sun

xd=[10 10];

%rounding speed
w0=1;
w_sun=0.05;

%init x0 and v0
x0=[0 0]';
v0=[1 1]';

%%
%simulink and display

%simulink for 500s
sim('cluster_robot_control_8_final_sim',500);

%displayfigure
t=x(:,1);
x1=xxxx(:,1);
y1=xxxx(:,2);
plot(x1,y1)

figure
x2=x(:,1);
y2=x(:,2);
plot(x2,y2)


figure
t=v(:,1);
v1=v(:,2);
v2=v(:,3);
plot(v1,v2)


x2=x(:,4);
y2=x(:,5);

x3=x(:,6);
y3=x(:,7);

x4=x(:,8);
y4=x(:,9);

plot(x1,y1,x2,y2,x3,y3,x4,y4)

hold on

%%dynamic display

figure
axis([-1500 1500 -1500 1500]);
hold on
len=length(x1);
for i=1:30:len
    %delete(h1)
    h1=plot(x1(i),y1(i),'o');
    h2=plot(x2(i),y2(i),'o');
    h3=plot(x3(i),y3(i),'o');
    h4=plot(x4(i),y4(i),'o');
    pause(0.01)
    delete([h1 h2 h3 h4]);
    %h1=plot(x1(i),y1(i),'o',x2(i),y2(i),'o',x3(i),y3(i),'o',x4(i),y4(i),'o')
    
end
%}%{
%{

%speed display
vx1=v(:,2);
vy1=v(:,3);

vx2=v(:,4);
vy2=v(:,5);

vx3=v(:,6);
vy3=v(:,7);

vx4=v(:,8);
vy4=v(:,9);

plot(vx1,vy1,vx2,vy2,vx3,vy3,vx4,vy4)
%}





close all;
y1=x(:,1);
x1=x(:,1);
plot(x1,y1);
