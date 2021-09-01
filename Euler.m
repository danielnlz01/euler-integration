% Metodo Euler de Integración

% Si dx(t)/dt = t^2+1 y x(0)=0, calcular x(1), x(2), x(3)

clc;clear

x(1,1)=0;x(1,2)=0; % Declaración de condición inicial

i=2;
dt=0.01;
for t=dt:dt:3
    x(1,1)=t;
    x(1,2)=x(1,2)+dt*((t-dt)^2+1);
    i=i+1;
    plot(x(1,1),x(1,2),'o')
end
%%

i=2;
dt=0.01;
t=0:dt:3;
x(i,2)=x(i-1,2)+t.*((t).^2+1);
plot(x(:,1),x(:,2))
%%

clear;clc

g=9.8;

angulo=45*pi/180;

vin=20;

vxin=vin*cos(angulo);
vyin=vin*sin(angulo);

xin=0;
yin=0;

dt=0.1;

x(1,1)=xin;
y(1,1)=yin;
vx(1,1)=vxin;
vy(1,1)=vyin;


i=1;
for t=dt:dt:3
    i=i+1;
    x(i,1)=x(i-1,1)+dt*vx(i-1,1);
    y(i,1)=y(i-1,1)+dt*vy(i-1,1);
    vx(i,1)=vx(i-1,1);
    vy(i,1)=vy(i-1,1)+dt*(-g);
end

plot(x,y,'r')
grid on