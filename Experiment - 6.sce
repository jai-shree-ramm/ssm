function[y]= f(x,_);
    y=x.*x+1
endfunction

x1=-10:1:10;
y1=f(x1);
subplot(3,1,1);
plot(x1,y1);
xlabel('x-axis');
ylabel('y-axis');
title('2-D plot');

y0=1;
t0=0;
x2=0:0.1:5;
y2=ode(y0,t0,x2,f);
subplot(3,1,2)
plot(x2,y2,'Linewidth',2);
xlabel('x-axis');
ylabel('y-axis');
title('First Order Differential Equation');

function[xp]=f2(t,x)
    xp(1)=x(2);
	xp(2)=-3*x(2)+10*x(1);
endfunction

y0=[1;3];
t0=1;
x3=3:0.5:5;
y3=ode(y0,t0,x3,f2);
subplot(3,1,3)
plot(x3,y3(1,:),'Linewidth',2);
xlabel('x-axis');
ylabel('y-axis');
title('Second Order Differential Equation');