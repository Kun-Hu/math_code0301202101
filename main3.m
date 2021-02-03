clear;clc;close all;set(0,'defaulttextinterpreter', 'latex')
% author: Kun Hu
% Work unit: Jiangsu Foreign Language School
% last changed: 2021,01,26

x=linspace(0,5,200)';
f= @(n,t) n.^2+t*(n-1).*(n-2).*(n-3).*(n-4);
obs_x=[1;2;3;4];
obs_y=[1;4;9;16];

t=-0.4;
figure;
plot(obs_x,obs_y,'.k','MarkerSize',30);%观测

[Y, ~] = lagrange(obs_x,obs_y,x);

hold on;
plot(x,Y,'-r','linewidth',2);%拉格朗日插值预报
hold on;
plot(x,f(x,t),'-.b','linewidth',2);%真实值
xlabel('$x$');ylabel('$y$')
set(gca,'FontSize',12);
% set(gcf,'Position',[300,500,600,440])%调整图片位置大小

%% 
t=1;
[Y, ~] = lagrange(obs_x,obs_y,x);

hold on;
plot(x,f(x,t),'--.k','linewidth',1);%真实值
xlabel('$x$');ylabel('$y$')
set(gca,'FontSize',12);
% set(gcf,'Position',[300,500,600,440])%调整图片位置大小

%% 
t=2;
[Y, ~] = lagrange(obs_x,obs_y,x);

hold on;
plot(x,f(x,t),'--m','linewidth',2);%真实值
xlabel('$x$');ylabel('$y$')
set(gca,'FontSize',12);
% set(gcf,'Position',[300,500,600,440])%调整图片位置大小
legend('数据点','拉格朗日插值','{a_n}={n^2}-0.4(n-1)(n-2)(n-3)(n-4)',...
    '{a_n}={n^2}+1(n-1)(n-2)(n-3)(n-4)','{a_n}={n^2}+2(n-1)(n-2)(n-3)(n-4)')


