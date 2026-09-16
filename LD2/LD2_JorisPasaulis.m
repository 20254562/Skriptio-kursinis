%Joris Pasaulis Ef-25/1 2026-09-16
%1
V1 = [-pi:0.7:2*pi]';
V2 = cos(V1);
V3=V1.^V2;
V4 = V3'

%2
X_mn=[exp(5), exp(-i/exp(1)), log(1); log(pi), -2, sin(-pi)];
X_1n=[X_mn(2,1)^2, X_mn(1,3), X_mn(2,3)^2];
X=[X_mn; X_1n];

determinantas=det(X)
%3
A=7; f=4; ro=2; U1=4.5; U2=2.5;
t=0:0.005:1;
n=ro*randn(size(t));
s=A*sin(2*pi*f*t)+n;

M1=s(s>U1);
M2=s;
M2(M2<U2)=0;
s_size=size(s)
M1_size=size(M1)
s_min=min(s)
s_max=max(s)

%papildoma
prompt1 = 'Įvesk vektoriu A';
A=input(prompt1)
B=[A(1:end),A(end:-1:1)]