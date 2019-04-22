y1=simout(:,1);
x1=simout(:,2);
plot(x1,y1);


clear
clc
%create L1 and initial input x0
L1=[1 0 0 -1;-1 1 0 0;0 -1 1 0;0 0 -1 1];
I2=eye(2);
LK1=kron(L1,I2);
LK1=-LK1;

E=eye(8);

x0=[1 3 2 1 3 2 4 5]';
v0=[1 1 2 1 1 1 1 1]';

display('Initial parameter:')
L1,x0,v0

%simulink and display
sim('cluster_robot_control_3_xy',20);

display('Result display:')
t=x(:,1);
x1=x(:,2);
y1=x(:,3);

x2=x(:,4);
y2=x(:,5);

x3=x(:,6);
y3=x(:,7);

x4=x(:,8);
y4=x(:,9);

plot(x1,y1,x2,y2,x3,y3,x4,y4)
