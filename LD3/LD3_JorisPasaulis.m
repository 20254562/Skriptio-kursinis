%Joris Pasaulis Ef-25/1 2026-09-23
%11 variantas

%1
x=0:0.5:2*pi;
figure(1);
f=sin(x)+cos(x).^2;
plot(x,f,'g-o','MarkerFaceColor','y',"MarkerEdgeColor",'r')
hold on;
grid on;
legend('f=sin(x)+cos(x)^2')
xlabel('x');
ylabel('f');
figure(2);
hold on;
grid on;
plot(x,x.^exp(1),x,x.^(2*exp(1)),x,x.^(3*exp(1)) )
legend('x^(exp(1))','x^(2*exp(1))','x^(3*exp(1))')

%% 
%2
close(1); close(2);
clear

x = -2*pi:0.2:2*pi;
y = x.^3 + sin(x);
figure(3);
u=ones(size(x));
v=ones(size(y));
quiver(x,u,v,y);
hold on;
title('y(x)=x^3 + sin(x)')
xlabel('x');
ylabel('y');
hold off;
figure(4);
hold on;
bar(x,y)
title('y(x)=x^3 + sin(x)')
xlabel('x');
ylabel('y');
hold off;

%% 
%papildomas 8
clear
close all
A=7; f=4; ro=2; U1=4.5; U2=2.5;
t=0:0.005:1;
n=ro*randn(size(t));
s=A*sin(2*pi*f*t)+n;

M1=s(s>U1);
M2=s;
M2(M2<U2)=0;

subplot(2,1,1);
plot(t,s,'-.','LineWidth',1);
hold on;
plot(t, M2,'-','LineWidth',1);
yline(U1,'b--','LineWidth',1);
yline(U2, 'r');
xlabel('Laikas, t (s)');
ylabel('Įtampa, U (V)');
legend('Pradinis signalas','Filtruotas signalas', ...
    'U_1 riba','U_2 riba','Location','southwest');
grid on;
subplot(2,1,2);
stem(t(s>U1),M1,'Marker','o');
xlabel('Laikas, t (s)');
ylabel('Įtampa, U (V)');
hold on;

idx = s > U1;
t1 = t(idx);
M1 = s(idx);

[maxU,kmax] = max(M1);
[minU,kmin] = min(M1);


tmax = t1(kmax);
tmin = t1(kmin);


plot(tmax,maxU,'Marker','o');
plot(tmin,minU,'bo','MarkerFaceColor','k', 'MarkerEdgeColor','b');


legend('Pradinio signalo reikšmės > U_1', ...
    'Location','southwest');

grid on;
hold on;

